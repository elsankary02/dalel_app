part of 'user_cubit.dart';

sealed class GetUserDataState {}

final class GetUserDataInitial extends GetUserDataState {}

final class GetUserDataLoading extends GetUserDataState {}

final class GetUserDataSuccess extends GetUserDataState {
  final UserModel user;

  GetUserDataSuccess(this.user);
}

final class GetUserDataFailuer extends GetUserDataState {
  final String message;

  GetUserDataFailuer(this.message);
}
