import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  Future<void> getUserData() async {
    try {
      emit(UserLoading());
      final uid = FirebaseAuth.instance.currentUser!.uid;
      final doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .get();

      if (!doc.exists) {
        emit(UserFailuer("User not found"));
        return;
      }
      final user = UserModel.fromJson(doc.data()!);

      emit(UserSuccess(user));
    } catch (e) {
      emit(UserFailuer(e.toString()));
    }
  }
}
