import 'package:chat_app/application/chatRoomBloc/chat_room_bloc.dart';
import 'package:chat_app/presentation/chatRoom/chatRoom.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/groupCreationPage/groupCreatePage.dart';
import 'package:chat_app/presentation/groupCreationPage/widgets/SectedMemberList.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:chat_app/presentation/widgetsCommon/snakbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupCreateProceedingPage extends StatelessWidget {
  final String myId;
  GroupCreateProceedingPage({Key? key, required this.myId}) : super(key: key);
  final textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatRoomBloc, ChatRoomState>(
      listener: (context, state) {
      state.optionSuccessOrFailure.fold(() => null, (either) {
        either.fold((l){
          showSnackBar(context, message: l.toString(), duration: Duration(seconds: 3));
        }, (String response) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>ChatRoom(groupId: response.trim(), isPrivate: false, uid: '', memberId: '', name: '',)));
        });
      });
      },
      child: Scaffold(
        floatingActionButton: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(10),
              backgroundColor: darkGreyColor),
          onPressed: () {
            //navigate to group config page
            print('ontap pressed');
            if (notifierUserList.value.length < 2) {
              showSnackBar(context,
                  message: 'atleast two members required',
                  duration: Duration(seconds: 2));
            }
            if (textEditingController.text.isEmpty) {
              showSnackBar(context,
                  message: 'group name should not be empty',
                  duration: Duration(seconds: 2));
            } else {
              List<String> memberIds = [];
              notifierUserList.value.forEach((element) {
                memberIds.add(element.userId);
              });
              print(memberIds.length);
              BlocProvider.of<ChatRoomBloc>(context).add(
                  ChatRoomEvent.createPublicGroup(
                      myId: myId,
                      memberIds: memberIds,
                      groupName: textEditingController.text));
            }
          },
          child: Icon(
            Icons.forward,
            color: textColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ValueListenableBuilder(
            valueListenable: notifierUserList,
            builder: (context, value, child) => SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  SelectedMemberWidget(),
                  kHeight,
                  CustomTextField(
                    hintText: "group name",
                    isSuffixWidget: false,
                    padding: 0,
                    width: MediaQuery.of(context).size.width * .7,
                    controller: textEditingController,
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
