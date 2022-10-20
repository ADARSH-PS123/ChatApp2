part of 'chat_room_bloc.dart';

@freezed
class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState(
          {required bool isLoading,required List<Message>lMessage,required GroupModel groupInfo,required List<UserModel>lUserModel,
          required Option<Either<Failure, String>> optionSuccessOrFailure}) =
      _ChatRoomState;
  factory ChatRoomState.initial() {
    return  ChatRoomState(groupInfo:GroupModel(members: []),
      optionSuccessOrFailure: None(),lMessage: [],lUserModel:[],
      isLoading: false,
    );
  }
}
