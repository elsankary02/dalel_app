import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> createUserWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    try {
      emit(CreatAccountLoading());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      sendEmailVerification();
      emit(CreatAccountSuccess());
    } on FirebaseAuthException catch (e) {
      log(e.code);
      if (e.code == 'weak-password') {
        emit(CreatAccountError(message: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(
          CreatAccountError(
            message: 'The account already exists for that email.',
          ),
        );
      } else if (e.code == 'invalid-email') {
        emit(CreatAccountError(message: 'The email address is not valid.'));
      }
    } catch (e) {
      emit(CreatAccountError(message: 'An error occurred.'));
    }
  }

  Future<void> sendEmailVerification() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  Future<void> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      emit(LogInLoading());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress.trim(),
        password: password,
      );
      emit(LogInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LogInError(message: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(LogInError(message: 'Wrong password provided for that user.'));
      } else if (e.code == 'invalid-credential') {
        emit(LogInError(message: 'Invalid email or password.'));
      } else if (e.code == 'too-many-requests') {
        emit(LogInError(message: 'too many requests'));
      } else if (e.code == 'network-request-failed') {
        emit(LogInError(message: 'network error'));
      } else {
        emit(LogInError(message: e.message ?? 'Something went wrong'));
      }
    } catch (e) {
      emit(LogInError(message: e.toString()));
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> sendPasswordResetEmail({required String emailAddress}) async {
    try {
      emit(ForgetPasswordLoading());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
      emit(ForgetPasswordSuccess());
    } on FirebaseAuthException catch (e) {
      emit(ForgetPasswordError(message: e.toString()));
    }
  }
}
