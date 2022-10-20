part of 'main_screen_bloc.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState(
      {required Option<Either<Failure, UserModel>> optionUserSucessOrFailure,
      required UserModel userModel,required List<UserModel>lUserModel,
      required bool isLoading,bool ? isSignedOut,
    required List<GroupModel> groupModelList,
      required List<GroupModel> lGroupModel}) = _MainScreenState;

      
  factory MainScreenState.initial() {
    return MainScreenState(
        optionUserSucessOrFailure: None(),lGroupModel: [],
        userModel: UserModel(userId: '', isOnline: false),isSignedOut: false,
        isLoading: false,groupModelList: [],
        lUserModel: []);
  }
}
