import 'package:chat_app/application/mainScreenBloc/main_screen_bloc.dart';
import 'package:chat_app/domain/core/deBouncer.dart';
import 'package:chat_app/domain/mainPage/models/userModel/userModel.dart';
import 'package:chat_app/presentation/chatRoom/chatRoom.dart';
import 'package:chat_app/presentation/core/colors.dart';
import 'package:chat_app/presentation/core/spaces.dart';
import 'package:chat_app/presentation/groupCreateProceedingPage/groupCreateProceedingPage.dart';
import 'package:chat_app/presentation/groupCreationPage/widgets/SectedMemberList.dart';
import 'package:chat_app/presentation/mainPage/widgets/ScreenListTile.dart';
import 'package:chat_app/presentation/mainPage/widgets/idlePage.dart';
import 'package:chat_app/presentation/mainPage/widgets/searchPage.dart';
import 'package:chat_app/presentation/widgetsCommon/customTextField.dart';
import 'package:chat_app/presentation/widgetsCommon/snakbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
  final ValueNotifier<List<UserModel>> notifierUserList = ValueNotifier([]);
class GroupCreatePage extends StatelessWidget {
  GroupCreatePage({
    Key? key,
  }) : super(key: key);
  final _deBouncer = Debouncer(milliseconds: 700);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(10),
                backgroundColor: darkGreyColor),
            onPressed: () {
              //navigate to group config page
              print('ontap pressed');
              if(notifierUserList.value.length<2){
                showSnackBar(context, message: 'atleast two members required', duration: Duration(seconds: 2));
              }
              else{  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GroupCreateProceedingPage(myId: state.userModel.userId,)));}
           
            },
            child: Icon(
              Icons.forward,
              color: textColor,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SafeArea(
                    child: ValueListenableBuilder(
                  valueListenable: notifierUserList,
                  builder: ((BuildContext context, value, child) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    notifierUserList.value.isEmpty?SizedBox(): SelectedMemberWidget(),
                        Center(
                          child: CustomTextField(
                            controller: searchController,
                            onchanged: (value) {
                              _deBouncer.run(() {
                                BlocProvider.of<MainScreenBloc>(context)
                                    .add(MainScreenEvent.serachUser(name: value));
                              });
                            },
                            height: 40,
                            padding: 12.h,
                            width: 300.w,
                            hintText: "search...",
                            isSuffixWidget: true,
                          ),
                        ),
                        kHeight15,
                        Text(
                            searchController.text.isEmpty
                                ? "add members"
                                : "search results",
                            style: TextStyle(color: textColor, fontSize: 22)),
                        if (state.isLoading)
                          Center(
                              child: CircularProgressIndicator(
                            color: textColor,
                          ))
                        else if (searchController.text.isNotEmpty)
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .7,
                            child: ListView.separated(
                                separatorBuilder: (context, index) => kHeight15,
                                itemCount: state.lUserModel.length,
                                itemBuilder: (BuildContext cxt, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      bool isDuplicatePresent = false;

                                      for (int i = 0;
                                          i < notifierUserList.value.length;
                                          i++) {
                                        if (state.lUserModel[index].userId ==
                                            notifierUserList.value[i].userId) {
                                          isDuplicatePresent = true;
                                          break;
                                        }
                                      
                                      }
                                        if (!isDuplicatePresent) {
                                          notifierUserList.value
                                              .add(state.lUserModel[index]);
                                          notifierUserList.value =
                                              notifierUserList.value
                                                      .toSet()
                                                      .toList() +
                                                  [];
                                        }
                                        else{
                                          showSnackBar(context, message: "already added", duration: Duration(seconds: 3));
                                        }
                                    },
                                    child: ScreenListTile(
                                      title: state.lUserModel[index].name
                                          .toString(),
                                      backgroundImage: state
                                          .lUserModel[index].profilePhoto
                                          .toString(),
                                    ),
                                  );
                                }),
                          )
                      ],
                    );
                  }),
                ))),
          ),
        );
      },
    );
  }
}
