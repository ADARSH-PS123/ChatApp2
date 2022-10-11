import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/chatRoom/ichatRoomRepo.dart';
import 'package:chat_app/domain/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_room_event.dart';
part 'chat_room_state.dart';
part 'chat_room_bloc.freezed.dart';
@injectable
class ChatRoomBloc extends Bloc<ChatRoomEvent, ChatRoomState> {
 final IchatRoomRepo ChatRoomRepo;
  ChatRoomBloc(this.ChatRoomRepo) : super(ChatRoomState.initial()) {
    
     on<_EventCreateGroup>((event, emit) async {
      final result = await ChatRoomRepo.createGroup(
          groupName: event.groupName,
          myId: event.myId,
          memberId: event.memberId);
      final out = result.fold((l) {
        return state.copyWith(optionSuccessOrFailure: Some(Left(l)));
      }, (success) {
        return state.copyWith(isLoading: false);
      });
      emit(out);
    });

  }
}
