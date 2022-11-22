// ignore_for_file: unused_local_variable

import 'package:aquessa/page/createacountpage.dart';
import 'package:aquessa/page/signinpage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  DateTime timeBackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this will give total height and width of the device
    return WillPopScope(
        onWillPop: () async {
          final differwnce = DateTime.now().difference(timeBackPressed);
          final isExitWarrning = differwnce >= const Duration(seconds: 2);

          timeBackPressed = DateTime.now();

          if (isExitWarrning) {
            const message = 'Press back again to exit';
            Fluttertoast.showToast(
                msg: message,
                fontSize: 18,
                backgroundColor: const Color(0xffFFFFFF),
                textColor: Colors.black);

            return false;
          } else {
            Fluttertoast.cancel();

            return true;
          }
        },
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
                backgroundColor: const Color(0xFF12172B),
                body: NestedScrollView(
                  headerSliverBuilder: (context, innerBOxIsScrolled) => [
                    SliverAppBar(
                        pinned: true,
                        floating: true,
                        flexibleSpace: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              TabBar(
                                  labelColor: Color(0xffFFFFFF),
                                  unselectedLabelColor: Color(0xff676C77),
                                  indicatorColor: Color(0xff676C77),
                                  indicatorWeight: 2,
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        "SIGN IN",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'raleway',
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        'CREATE ACCOUNT',
                                        style: TextStyle(
                                            fontFamily: 'raleway',
                                            fontSize: 14),
                                      ),
                                    )
                                  ]),
                            ]))
                  ],
                  body: Container(
                      color: const Color(0xffFFFFFF),
                      child: TabBarView(
                          children: [const SignInPage(), CreateAcountPage()])),
                ))));

    /*DefaultTabController(
        length: 2, child: Scaffold(
      backgroundColor: Color(0xFF12172B),
      appBar: PreferredSize( preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(color: Color(0xFF72AFDE),child: SafeArea(child: Column(
        children: [Expanded(child: Container()),TabBar(labelColor: Color(0xFFFFFFFF),
          unselectedLabelColor: Color(0xFF676C77),indicatorColor: Color(0xFF676C77),
          indicatorWeight: 2,
          tabs:
        [Text("SIGNIN" ,style: TextStyle(
          fontFamily: 'raleway',fontSize: 14),), Text("CREATEACOUNT",
          style: TextStyle(fontFamily: 'raleway',
            fontSize: 14,))],)]
      )),),),resizeToAvoidBottomInset: false,
      body: Container(color: Color(0xFFFFFFFF),
        child:
      TabBarView(children: [SignInPage(),CreateAcountPage(),]),)));*/
  }
}
