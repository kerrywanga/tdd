part of 'authentication_cubit.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();
  
  @override
  List<Object> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

class CreatingUser extends AuthenticationState{
  const CreatingUser();
}

class GettingUsers extends AuthenticationState{
  const GettingUsers();
}

class UserCreated extends AuthenticationState{
  const UserCreated();
}

class UsersLoaded extends AuthenticationState{
  const UsersLoaded(this.users);

  final List<User> users;

  @override
  List<Object> get props=>users.map((user) => user.id).toList();
}

class AuthenticationError extends AuthenticationState{
  const AuthenticationError(this.message);
  final String message;
  @override
  List<String> get props=>[message];
}