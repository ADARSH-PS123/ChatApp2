part of 'main_screen_bloc.dart';

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.getUserInfo({required String uid}) =
      _EventGetUserInfo;
  const factory MainScreenEvent.serachUser({required String name}) =
      _EventSearchUser;
  const factory MainScreenEvent.showChatLists({required String uid}) =
      _EventShowChatLists;
      const factory MainScreenEvent.userProfile({required String destination,required bool isDeletion})=_EventUserProfile;
      const factory MainScreenEvent.editUserName(
    {required String userName,required String userId}
      )=_EventEditUserName;
      const  factory MainScreenEvent.showUserList({required String uid}) =
      _EventShowUserLists;
       const factory MainScreenEvent.showPublicChatLists({required String uid}) =
      _EventShowPublicChatLists;

         const factory MainScreenEvent.signOut() =
      _EventSignOut;
}
