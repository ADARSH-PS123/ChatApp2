part of 'chat_room_bloc.dart';

@freezed
class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState({
 required   bool isLoading,required Option<Either<Failure,String>>optionSuccessOrFailure
  })=_ChatRoomState;
  factory ChatRoomState.initial(){
    return ChatRoomState(optionSuccessOrFailure: None(), isLoading: false,);
  }
}
