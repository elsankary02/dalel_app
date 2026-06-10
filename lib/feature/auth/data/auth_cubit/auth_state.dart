part of 'auth_cubit.dart';

abstract class AuthState {}

//! CreatAccount States
final class AuthInitial extends AuthState {}

final class CreatAccountLoading extends AuthState {}

final class CreatAccountSuccess extends AuthState {}

final class CreatAccountError extends AuthState {
  final String message;

  CreatAccountError({required this.message});
}

//! LogIn States
final class LogInLoading extends AuthState {}

final class LogInSuccess extends AuthState {}

final class LogInError extends AuthState {
  final String message;

  LogInError({required this.message});
}

//! ForgetPassword States
final class ForgetPasswordLoading extends AuthState {}

final class ForgetPasswordSuccess extends AuthState {}

final class ForgetPasswordError extends AuthState {
  final String message;

  ForgetPasswordError({required this.message});
} //! SignOut States

final class SignOutSuccess extends AuthState {}

final class SignOutError extends AuthState {
  final String message;

  SignOutError({required this.message});
}
