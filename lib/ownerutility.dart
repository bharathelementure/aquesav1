import 'package:aquessa/page/navdrwer.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class OwnerUtility extends StatefulWidget {
  const OwnerUtility({Key? key}) : super(key: key);

  @override
  State<OwnerUtility> createState() => _OwnerUtilityState();
}

class _OwnerUtilityState extends State<OwnerUtility> {
  int count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFFFFFFF),endDrawer: Drawer(
      child: ListView(padding: EdgeInsets.zero,children: [DrawerHeader(
        child: Icon(Icons.account_circle),
        decoration: BoxDecoration(),)],),),drawer: NavDrawer(),
      appBar: AppBar(centerTitle: true,title: Text('Owner',style: TextStyle(
        fontSize: 25,fontWeight: FontWeight.w700,fontFamily: 'raleway',
          color: Color(0xFFFFFFFF),),),elevation: 0,backgroundColor: Color(0xFF72AFDE),
      leading: Builder(builder: (context){return IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: Icon(Icons.account_circle,color: Color(0xFFFFFFFF),
            size: 27,));},),),resizeToAvoidBottomInset: false,body: SingleChildScrollView(
        reverse: true,child: Stack(children: [Container(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,children: [WaveWidget(config:
      CustomConfig(durations: [18000,30000,60000], heightPercentages: [0.65, 0.66,0.68],
      colors: [Color(0xFFAAD7FB),Color(0xFFA5D4F9),Color(0xFFFFFFFF)]),
          size: Size(double.infinity, 175),waveAmplitude: 35,
        backgroundColor: Color(0xFF72AFDE),),
        //first bar
        SizedBox(height: 0,),Container(
        margin: EdgeInsets.only(left: 20,right: 20),padding: EdgeInsets.all(15),
        height: 78,width: double.infinity,decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,
              color: Color(0xFF000000).withOpacity(0.25)),]),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Add House',style: TextStyle(fontFamily: 'raleway',
          fontWeight: FontWeight.w700,fontSize: 25,color: Color(0xFF2A3F74)),),
            SizedBox(height: 4,),Text('Name your house',style: TextStyle(fontSize: 12,
            fontWeight: FontWeight.w500,fontFamily: 'raleway'),)],),Spacer(),
        FloatingActionButton(onPressed: () {Navigator.pushNamed(context, '/nameDevice');},
          backgroundColor: Color(0xFF2A3F74),
        child: Icon(Icons.add,color: Color(0xFFFFFFFF),size: 50,),)],)),
        //second bar
        SizedBox(height: 20,),Container(margin: EdgeInsets.only(left: 20,right: 20),
        padding: EdgeInsets.all(8),height: 113,width: double.infinity,decoration:
          BoxDecoration(color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,
              color: Color(0xFF000000).withOpacity(0.25))]),child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [CircleAvatar(backgroundColor: Color(0xFFC4C4C4),radius: 20,),
            Spacer(),Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('House 1',style: TextStyle(fontFamily: 'raleway',
                fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xFF2A3F74)),),
            SizedBox(height: 4,),Text('Set limit',style: TextStyle(fontSize: 12,
              fontWeight: FontWeight.w500,fontFamily: 'raleway',color: Color(0xFF2A3F74)),)],),
          Spacer(),Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [TextButton(onPressed: () {}, child: Text('Remove',
                style: TextStyle(fontFamily: 'raleway',fontWeight: FontWeight.w500,
                fontSize: 12,color: Color(0xFF4483D0)),)),
              Row(children: [IconButton(onPressed: () {setState(() {
                count--;
              });}, icon: Icon(Icons.horizontal_rule,
              color: Color(0xFF2A3F74),size: 17,)),SizedBox(height: 0,),
                Text('${count} Litres',style: TextStyle(fontFamily: 'inter',
                    fontWeight: FontWeight.w500,fontSize: 13,color: Color(0xFF2A3F74)),),
                IconButton(onPressed: () {setState(() {
                  count = count+10;
                });}, icon: Icon(Icons.add,
                color: Color(0xFF2A3F74),size: 17,))],)],)],),),
      //third bar
      SizedBox(height: 10,),Container(margin: EdgeInsets.only(left: 20,right: 20),
        padding: EdgeInsets.all(11),height: 55,width: double.infinity,decoration:
          BoxDecoration(color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,color: Color(0xFF000000).
          withOpacity(0.25))]),child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [CircleAvatar(backgroundColor: Color(0xFFC4C4C4),radius: 20,),
            Text('House 2',style: TextStyle(fontSize: 12,fontFamily: 'raleway',
          fontWeight: FontWeight.w500,color: Color(0xFF2A3F74)),),Spacer(),
          TextButton(onPressed: () {}, child: Text('Edit',style: TextStyle(
            fontWeight: FontWeight.w500,fontFamily: 'raleway',fontSize: 12,
            color: Color(0xFF4483D0)),)),Spacer(),
            TextButton(onPressed: () {},
                child: Text('Remove',style: TextStyle(
                fontWeight: FontWeight.w500,fontFamily: 'raleway',fontSize: 12,
                color: Color(0xFF4483D0)),))],),),
      //Fourth bar
        SizedBox(height: 10,),Container(margin: EdgeInsets.only(left: 20,right: 20),
          padding: EdgeInsets.all(11),height: 55,width: double.infinity,decoration:
          BoxDecoration(color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,color: Color(0xFF000000).
              withOpacity(0.25))]),child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [CircleAvatar(backgroundColor: Color(0xFFC4C4C4),radius: 20,),
              Text('House 3',style: TextStyle(fontSize: 12,fontFamily: 'raleway',
                fontWeight: FontWeight.w500,color: Color(0xFF2A3F74)),),Spacer(),
              TextButton(onPressed: () {}, child: Text('Edit',style: TextStyle(
                  fontWeight: FontWeight.w500,fontFamily: 'raleway',fontSize: 12,
                  color: Color(0xFF4483D0)),)),Spacer(),
              TextButton(onPressed: () {},
                  child: Text('Remove',style: TextStyle(
                      fontWeight: FontWeight.w500,fontFamily: 'raleway',fontSize: 12,
                      color: Color(0xFF4483D0)),))],),),
        //fifth bar
        SizedBox(height: 10,),Container(margin: EdgeInsets.only(left: 20,right: 20),
          padding: EdgeInsets.all(11),height: 55,width: double.infinity,decoration:
          BoxDecoration(color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,color: Color(0xFF000000).
              withOpacity(0.25))]),child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [CircleAvatar(backgroundColor: Color(0xFFC4C4C4),radius: 20,),
              Text('House 4',style: TextStyle(fontSize: 12,fontFamily: 'raleway',
                fontWeight: FontWeight.w500,color: Color(0xFF2A3F74)),),Spacer(),
              TextButton(onPressed: () {}, child: Text('Edit',style: TextStyle(
                  fontWeight: FontWeight.w500,fontFamily: 'raleway',fontSize: 12,
                  color: Color(0xFF4483D0)),)),Spacer(),
              TextButton(onPressed: () {},
                  child: Text('Remove',style: TextStyle(
                      fontWeight: FontWeight.w500,fontFamily: 'raleway',fontSize: 12,
                      color: Color(0xFF4483D0)),))],),),
      ],),)],),
      ),);
  }
}
