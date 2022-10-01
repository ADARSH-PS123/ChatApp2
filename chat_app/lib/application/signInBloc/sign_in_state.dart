part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
 const  factory SignInState(
  {required String email,
  required String password ,
  required bool isLoading,
  required Option<Either<Failure,String>> optionSucessOrFailure})=_SignInState;
  factory SignInState.initial(){
    return SignInState(email: "", password: "", isLoading: false, optionSucessOrFailure: None(),);
  }
 }

