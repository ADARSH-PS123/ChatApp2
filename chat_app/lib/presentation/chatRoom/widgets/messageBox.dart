import 'package:chat_app/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class MessageBox extends StatelessWidget {
  final String message;
  final bool isSendBy;
  final bool isBottom;
  const MessageBox(
      {Key? key,
      required this.message,
      required this.isSendBy,
      required this.isBottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isSendBy ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
            child: SizedBox(
            
              child: Stack(
                children: [
                  Container(
                      margin: isBottom
                          ? const EdgeInsets.only(top: 7, bottom: 65)
                          : const EdgeInsets.only(top: 7, bottom: 7,),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: isSendBy ? darkGreyColor : textFieldInnerColor,
                          borderRadius: isSendBy
                              ? const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))
                              : const BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                      child: Text(
                        message,
                        style: TextStyle(color: textColor, fontSize: 13),
                      )),Positioned(bottom: 3,right: 0,
                        child:isSendBy?SizedBox(): CircleAvatar(radius: 9,))
                ],
              ),
            ))
      ],
    );
  }
}
