part of 'chat_room_bloc.dart';

@freezed
class ChatRoomEvent with _$ChatRoomEvent {
  const factory ChatRoomEvent.createGroup(
      {required String groupName,
      required String myId,
      required String message,
      required String memberId}) = _EventCreateGroup;

      
      const factory ChatRoomEvent.readMessage({
        required String groupId
      })=_EventReadMessage;
      const factory ChatRoomEvent.getGroupInfo({
        required String groupId
      })=_EventGetUserInfo;

         const factory ChatRoomEvent.createPublicGroup({
        required String myId,required List<String>memberIds,required String groupName,
      })=_EventCreatePublicGroup;

           const factory ChatRoomEvent.getUserList({
        required String groupId,
      })=_EventGetUserList;


           const factory ChatRoomEvent.sendPublicGroupMessage({
        required String groupId,required String myId,required String message,
      })=_EventSendPublicGroupMessage;
    
}
