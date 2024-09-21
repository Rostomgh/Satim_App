part of 'auth_bloc.dart';


abstract class AuthEvent {}

class AuthLogin extends AuthEvent {

  final String email;
  final String password;
 AuthLogin( this.email,this.password);
  
}
