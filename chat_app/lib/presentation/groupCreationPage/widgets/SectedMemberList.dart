import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/groupCreationPage/groupCreatePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedMemberWidget extends StatelessWidget {
 
  const SelectedMemberWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(
                            height: MediaQuery.of(context).size.height * .12,
                            child: ListView.builder(
                              itemCount: notifierUserList.value.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext cxt, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0, top: 8.0),
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 25.r,
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: GestureDetector(
                                                onTap: () {
                                                  notifierUserList.value
                                                      .removeAt(index);
                                                  notifierUserList.value =
                                                      notifierUserList.value +
                                                          [];
                                                },
                                                child: Icon(
                                                  Icons.cancel,
                                                  size: 25.r,
                                                  color: textColor,
                                                )),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 50.r,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 6, top: 8),
                                          child: Text(
                                            notifierUserList.value[index].name
                                                .toString(),
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: textColor,
                                                fontSize: 10.sp),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ));
  }
}