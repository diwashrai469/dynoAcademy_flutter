part of 'login_cubit_cubit.dart';

sealed class LoginCubitCubitState extends Equatable {

  const LoginCubitCubitState();


  @override

  List<Object> get props => [];

}


final class DataLoading extends LoginCubitCubitState {}

class SignIsLoading extends LoginCubitCubitState {
  final bool isloading;


  const SignIsLoading(this.isloading);

}

