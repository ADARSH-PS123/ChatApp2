import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/application/mainScreenBloc/main_screen_bloc.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/logInScreen.dart/loginScreen.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:chat_app/presentation/widgetsCommon/snakbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({
    Key? key,
  }) : super(key: key);
  String textFieldValus = '';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<MainScreenBloc, MainScreenState>(
      listener: (context, state) {
        if(state.isSignedOut??false){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>AuthScreen()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  kHeight,
                  kHeight15,
                  kHeight,
                  Center(
                    child: state.userModel.profilePhoto.toString().isEmpty
                        ? CircleAvatar(
                            radius: size.width * .285,
                            backgroundImage: AssetImage('assets/user.jpg'),
                          )
                        : CircleAvatar(
                            radius: size.width * .285,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(size.width * .285),
                              child: CachedNetworkImage(
                                  errorWidget: (context, url, error) =>
                                      const Image(
                                          image: AssetImage('assets/user.jpg')),
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) {
                                    return const Image(
                                        image: AssetImage('assets/user.jpg'));
                                  },
                                  imageUrl:
                                      state.userModel.profilePhoto.toString()),
                            ),
                          ),
                  ),
                  TextButton.icon(
                      onPressed: () {
                        BlocProvider.of<MainScreenBloc>(context).add(
                            MainScreenEvent.userProfile(
                                isDeletion:
                                    false, //becaue it is editing the existing file
                                destination:
                                    state.userModel.userId.toString().trim()));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: textColor,
                      ),
                      label: Text(
                        "edit profile picture",
                        style: TextStyle(color: textColor),
                      )),
                  TextButton.icon(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: ((context) => AlertDialog(
                                  elevation: 12,
                                  backgroundColor: backgroundColor,
                                  title: Text("do you want to delete ?",
                                      style: TextStyle(color: textColor)),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('cancel',
                                            style:
                                                TextStyle(color: textColor))),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.redAccent)),
                                        onPressed: () {
                                          if (state.userModel.profilePhoto!
                                              .isEmpty) {
                                            Navigator.of(context).pop();
                                          } else {
                                            BlocProvider.of<MainScreenBloc>(
                                                    context)
                                                .add(
                                                    MainScreenEvent.userProfile(
                                                        isDeletion: true,
                                                        destination: state
                                                            .userModel.userId
                                                            .toString()
                                                            .trim()));
                                            Navigator.of(context).pop();
                                          }
                                        },
                                        child: Text('delete',
                                            style: TextStyle(color: textColor)))
                                  ],
                                )));
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      label: Text(
                        "delete profile picture",
                        style: TextStyle(color: Colors.red),
                      )),
                  TextButton.icon(
                      onPressed: () {
                        BlocProvider.of<MainScreenBloc>(context).add(MainScreenEvent.signOut());
                      },
                      icon: Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      label: Text(
                        'log out from device',
                        style: TextStyle(color: Colors.red),
                      )),
                  kHeight15,
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 30, right: 30),
                    leading: CircleAvatar(
                      backgroundColor: textFieldInnerColor,
                      radius: size.width * .06,
                      child: CircleAvatar(
                        radius: size.width * .05,
                        backgroundColor: textColor,
                      ),
                    ),
                    title: Text(
                      state.userModel.name.toString(),
                      style: TextStyle(color: textColor),
                    ),
                    subtitle: Text("email : comming soon",
                        style: TextStyle(color: textColor)),
                    trailing: IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: ((context) => AlertDialog(
                                    elevation: 12,
                                    backgroundColor: backgroundColor,
                                    title: Text("edit name",
                                        style: TextStyle(color: textColor)),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            print(textFieldValus);
                                            if (textFieldValus.isNotEmpty) {
                                              BlocProvider.of<MainScreenBloc>(
                                                      context)
                                                  .add(MainScreenEvent
                                                      .editUserName(
                                                          userName:
                                                              textFieldValus,
                                                          userId: state
                                                              .userModel.userId
                                                              .trim()));
                                              state.optionUserSucessOrFailure
                                                  .fold(
                                                      () => null,
                                                      (either) => either.fold(
                                                          (fail) => null,
                                                          (success) =>
                                                              Navigator.of(
                                                                      context)
                                                                  .pop()));
                                            } else {
                                              Navigator.of(context).pop();
                                              showSnackBar(context,
                                                  message:
                                                      "name field should not be empty",
                                                  duration:
                                                      Duration(seconds: 4));
                                            }
                                          },
                                          child: Text('submit',
                                              style:
                                                  TextStyle(color: textColor)))
                                    ],
                                    content: CustomTextField(
                                        hintText: '',
                                        initialValue: state.userModel.name,
                                        onchanged: (value) {
                                          textFieldValus = value;
                                        },
                                        isSuffixWidget: false,
                                        padding: 1,
                                        width: size.width * .6),
                                  )));
                        },
                        icon: Icon(
                          Icons.edit,
                          color: textColor,
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
