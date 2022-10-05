part of 'main_screen_bloc.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState(
      {required Option<Either<Failure, UserModel>> optionUserSucessOrFailure,
      required UserModel userModel,
      required bool isLoading,
      required List<UserModel> lUserModel}) = _MainScreenState;
  factory MainScreenState.initial() {
    return MainScreenState(
        optionUserSucessOrFailure: None(),
        userModel: UserModel(userId: ''),isLoading: false,
        lUserModel: []);
  }
}
