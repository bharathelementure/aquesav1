

import 'package:aquessa/page/navdrwer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
// import 'package:intl/intl.dart';

class Utility extends StatefulWidget {
  const Utility({Key? key}) : super(key: key);

  @override
  State<Utility> createState() => _UtilityState();
}

class _UtilityState extends State<Utility> {
  bool switches = false;
  bool switches1 = false;
  bool switches2 = false;
  bool switches3 = false;
  String _value = 'one';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF72AFDE),drawer: NavDrawer(),
      appBar: AppBar(
        /*centerTitle: true,title: DropdownButton(
          items: [DropdownMenuItem(child: Text(DateFormat('d-M-y').format(DateTime.now()),style:
      TextStyle(fontFamily: 'raleway',fontSize: 12,fontWeight: FontWeight.w500,
          color: Color(0xFF2A3F74)),),value: 'one',),
        DropdownMenuItem(child: Text('17 sep 2022',style:
        TextStyle(fontFamily: 'raleway',fontSize: 12,fontWeight: FontWeight.w500,
            color: Color(0xFF2A3F74)),),value: 'two',)], onChanged: (String) {
            setState(() => _value = _value);}),*/
        elevation: 0,
        actions: [IconButton(onPressed: () {},
            icon: Icon(Icons.notifications_outlined,color: Color(0xFFFFFFFF),
              size: 26,))],backgroundColor: Color(0xFF72AFDE),
        leading: Builder(builder: (context){return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.account_circle_outlined,color: Color(0xFFFFFFFF),
              size: 27,));}),),resizeToAvoidBottomInset: false,
      body: GridView.count(childAspectRatio: 1.1,
        crossAxisCount: 2,children: [
          //bathroom utility
          Container(margin: EdgeInsets.only(left: 35,top: 30),
        padding: EdgeInsets.all(30),decoration: BoxDecoration(color: Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(25)),child: Column(children: [Text('Bathroom',
      style: TextStyle(fontFamily: 'inter',fontSize: 12,fontWeight: FontWeight.w300,
      color: Color(0xFF000000)),),Spacer(),
              FlutterSwitch(width: 52,height: 23,
          activeColor: Color(0xFF59B8EE),inactiveColor: Color(0xFFD2D2D2),
          toggleColor: Color(0xFFFFFFFF),toggleSize: 21,
          value: switches,
          onToggle: (value){setState(() {
            switches = value;
          });}),
              Spacer(),Text('50 Litres',style: TextStyle(fontSize: 12,
      fontWeight: FontWeight.w300,fontFamily: 'inter',color: Color(0xFF000000)),)],),),
          //Kitchen utility
          Container(margin: EdgeInsets.only(left: 20,top: 30,right: 30),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(25)),
            child: Column(children: [Text('Kitchen',
              style: TextStyle(fontFamily: 'inter',fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF000000)),),Spacer(),
              FlutterSwitch(width: 52,height: 23,
                activeColor: Color(0xFF59B8EE),inactiveColor: Color(0xFFD2D2D2),
                toggleColor: Color(0xFFFFFFFF),toggleSize: 21,
                value: switches1,
                onToggle: (value){setState(() {
                  switches1 = value;
                });}),Spacer(),Text('25 Litres',style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.w300,fontFamily: 'inter',color: Color(0xFF000000)),)],),),
        //powder Room utility
        Container(margin: EdgeInsets.only(left: 35,top: 30),
          padding: EdgeInsets.all(30),decoration: BoxDecoration(color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(25)),child: Column(children: [Text('Powder Room',
            style: TextStyle(fontFamily: 'inter',fontSize: 12,fontWeight: FontWeight.w300,
                color: Color(0xFF000000)),),SizedBox(height: 20,),FlutterSwitch(width: 52,height: 23,
              activeColor: Color(0xFF59B8EE),inactiveColor: Color(0xFFD2D2D2),
              toggleColor: Color(0xFFFFFFFF),toggleSize: 21,
              value: switches2,
              onToggle: (value){setState(() {
                switches2 = value;
              });})],),),
        //Utility
        Container(margin: EdgeInsets.only(left: 20,top: 30,right: 30),
          padding: EdgeInsets.all(30),decoration: BoxDecoration(color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(25)),child: Column(children: [Text('Utility',
            style: TextStyle(fontFamily: 'inter',fontSize: 12,fontWeight: FontWeight.w300,
                color: Color(0xFF000000)),),SizedBox(height: 20,),FlutterSwitch(width: 52,height: 23,
              activeColor: Color(0xFF59B8EE),inactiveColor: Color(0xFFD2D2D2),
              toggleColor: Color(0xFFFFFFFF),toggleSize: 21,
              value: switches3,
              onToggle: (value){setState(() {
                switches3 = value;
              });})],),),
        //add utility
        Container(margin: EdgeInsets.only(left: 35,top: 30),
          padding: EdgeInsets.all(20),decoration: BoxDecoration(color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(25)), alignment: Alignment.centerLeft,
          child: Column(children: [IconButton(onPressed: () {Navigator.pushNamed(context, '/ownerutility');},
                    icon: Icon(Icons.add,color: Color(0xFF2A3F74),size: 83,))],),)],),);
  }
}

