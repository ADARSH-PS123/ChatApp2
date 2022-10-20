import 'package:chat_app/domain/core/functions.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:chat_app/presentation/chatRoom/chatRoom.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/mainPage/widgets/ScreenListTile.dart';
import 'package:flutter/material.dart';



class SearchPage extends StatelessWidget {
  final String uid;
  final List<UserModel>lUserModel;
   SearchPage({Key? key,required this.uid,required this.lUserModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
                          height: MediaQuery.of(context).size.height * .7,
                          child: ListView.separated(
                              separatorBuilder: (context, index) => kHeight15,
                              itemCount: lUserModel.length,
                              itemBuilder: (BuildContext cxt, int index) {
                                return GestureDetector(
                                  onTap: () {
                               
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => ChatRoom(
                                              name: lUserModel[index].name.toString(),
                                                  uid: uid,
                                                  memberId: lUserModel[index].userId, isPrivate: true, groupId: HelperFunctions.idCreator(uid,lUserModel[index].userId ),
                                                )));
                                  },
                                  child: ScreenListTile(
                                    title:
                                     lUserModel[index].name.toString(),
                                    backgroundImage: lUserModel[index].profilePhoto
                                        .toString(),
                                  ),
                                );
                              }),
                        );
  }
}