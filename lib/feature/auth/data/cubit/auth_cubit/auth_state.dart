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
