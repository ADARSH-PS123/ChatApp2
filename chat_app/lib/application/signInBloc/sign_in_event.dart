part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.logIn(
      {required String email, required String password}) = _EventLogIn;
      const factory SignInEvent.prefGetUser()=_EventPrefGetUser;
}
