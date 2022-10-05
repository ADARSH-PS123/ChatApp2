part of 'main_screen_bloc.dart';

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.getUserInfo({required String uid}) = _EventGetUserInfo;
  const factory MainScreenEvent.serachUser({required String name}) = _EventSearchUser;
}
