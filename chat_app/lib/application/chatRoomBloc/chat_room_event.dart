part of 'chat_room_bloc.dart';

@freezed
class ChatRoomEvent with _$ChatRoomEvent {
   const factory ChatRoomEvent.createGroup(
      {required String groupName,
      required String myId,
      required String memberId}) = _EventCreateGroup;
}