import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<GetUserDataState> {
  UserCubit() : super(GetUserDataInitial());

  Future<void> getUserData() async {
    try {
      emit(GetUserDataLoading());
      final uid = FirebaseAuth.instance.currentUser!.uid;
      final doc = await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .get();

      if (!doc.exists) {
        emit(GetUserDataFailuer("User not found"));
        return;
      }
      final user = UserModel.fromJson(doc.data()!);

      emit(GetUserDataSuccess(user));
    } catch (e) {
      emit(GetUserDataFailuer(e.toString()));
    }
  }
}
