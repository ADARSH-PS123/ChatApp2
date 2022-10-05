part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState(
          {required String email,
          required String password,
          required bool isLoading,
          required bool isVerifying,
          required Option<Either<Failure, String>> optionSucessOrFailure}) =
      _RegisterState;
  factory RegisterState.initial() {
    return RegisterState(
        email: "",
        password: "",
        isLoading: false,
        optionSucessOrFailure: none(),
        isVerifying: false);
  }
}
