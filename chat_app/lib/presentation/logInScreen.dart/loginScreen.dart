import 'package:chat_app/application/signInBloc/sign_in_bloc.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/registerPage/registerPage.dart';
import 'package:chat_app/presentation/mainPage/mainPage.dart';

import 'package:chat_app/presentation/widgetsCommon/buttons.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:chat_app/presentation/widgetsCommon/snakbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          state.optionSucessOrFailure.fold(
              () => null,
              (either) => either.fold((l) async {
                    String errorMessage = state.optionSucessOrFailure.fold(
                        () => "null",
                        (either) => either.fold(
                            (l) => l
                                .toString()
                                .replaceRange(0, 19, "")
                                .replaceAll("()", ""),
                            (r) => "Success"));

                    showSnackBar(context,
                        duration: Duration(seconds: 3), message: errorMessage);
                  }, (r) {
                    emailController.clear();
                    passwordController.clear();
                  }));
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return InputPage(
              email: state.email,
              emailController: emailController,
              passwordController: passwordController,
              password: state.password,
              buttonText1: 'log in',
              buttonText2: 'new member ? ',
            );
          }
        },
      ),
    );
  }
}

class InputPage extends StatelessWidget {
  TextEditingController? emailController;
  TextEditingController? passwordController;
  String buttonText1;
  String buttonText2;
  String email;
  String password;

  InputPage(
      {Key? key,
      required this.buttonText1,
      required this.buttonText2,
      required this.email,
      required this.password,
      this.emailController,
      this.passwordController})
      : super(key: key);

  @override
  final _formKey1 = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                      controller: emailController,
                      validator: (p0) {
                        if (p0 == null || p0.isEmpty) {
                          print("if block");
                          return "please enter something";
                        } else if (RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(p0)) {
                          return null;
                        } else {
                          return "invalid email";
                        }
                      },
                      hintText: "email",
                      isSuffixWidget: false,
                      padding: 0,
                      width: 250.w,
                    ),
                    kHeight,
                    CustomTextField(
                        controller: passwordController,
                        validator: (outvalue) {
                          if (outvalue == null || outvalue.length < 8) {
                            return "minimun of 8 char required";
                          } else {
                            return null;
                          }
                        },
                        hintText: "password",
                        isSuffixWidget: false,
                        padding: 0,
                        width: 250.w),
                    kHeight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (_formKey1.currentState!.validate()) {
                              BlocProvider.of<SignInBloc>(context).add(
                                  SignInEvent.logIn(
                                      email: emailController!.text,
                                      password: passwordController!.text));
                            }
                          },
                          child: buttons(
                              height: 40.0,
                              color: Colors.blue,
                              width: 117.5.w,
                              widget: Text(
                                buttonText1,
                                style:
                                    TextStyle(color: textColor, fontSize: 15),
                              )),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            emailController!.clear();
                            passwordController!.clear();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegScreen()));
                          },
                          child: buttons(
                              height: 40.0,
                              color: Colors.blue,
                              width: 117.5.w,
                              widget: Text(
                                buttonText2,
                                style:
                                    TextStyle(color: textColor, fontSize: 15),
                              )),
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ));
  }
}
