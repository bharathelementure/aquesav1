import 'package:aquessa/page/createacountpage.dart';
import 'package:aquessa/page/signinpage.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;//this will give total height and width of the device
    return
      DefaultTabController(length: 2,
        child: Scaffold(backgroundColor: Color(0xFF12172B),
          body: NestedScrollView(
              headerSliverBuilder: (context, innerBOxIsScrolled) =>
              [SliverAppBar(pinned: true, floating: true,
                  flexibleSpace: Column(mainAxisAlignment: MainAxisAlignment.end,children: [
                   TabBar(labelColor: Color(0xffFFFFFF),
                      unselectedLabelColor: Color(0xff676C77),indicatorColor: Color(0xff676C77),
                      indicatorWeight: 2,
                      tabs: [Tab(child: Text("SIGN IN",
                  style: TextStyle(fontSize: 14,fontFamily: 'raleway',),),),
                  Tab(child: Text('CREATE ACCOUNT',style: TextStyle(
                    fontFamily: 'raleway',fontSize: 14),),)]),])
              )], body: Container(color: Color(0xffFFFFFF),child:
          TabBarView(children: [SignInPage(),CreateAcountPage()])),)));
    
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
