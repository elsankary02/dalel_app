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
      emit(AuthLoading());
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(AuthError(message: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(AuthError(message: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(AuthError(message: 'An error occurred.'));
    }
  }
}
