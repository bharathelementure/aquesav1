import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,body: SingleChildScrollView(
      reverse: true,child: Stack(children: [Column(
      mainAxisAlignment: MainAxisAlignment.start,children: [WaveWidget(config:
    CustomConfig(durations: [18000, 30000, 60000], heightPercentages: [0.65, 0.66,0.68],
        colors: [Color(0xFFAAD7FB),Color(0xFFA5D4F9),Color(0xFFFFFFFF)]),
      size: Size(double.infinity, 175),waveAmplitude: 35,
      backgroundColor: Color(0xFF72AFDE),),
      //firstbar
      SizedBox(height: 0,),Container(
          margin: EdgeInsets.only(left: 20,right: 20),padding: EdgeInsets.all(11),
          height: 60,width: double.infinity,decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,
              color: Color(0xFF000000).withOpacity(0.25)),]),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 8,),Text('04 sep 2022 - 04 oct 2022',style: TextStyle(fontFamily: 'raleway',
                  fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xFF2A3F74)),),
                Text('Rs. 350',style: TextStyle(fontSize: 12,color: Color(0xFF2A3F74),
                    fontWeight: FontWeight.w500,fontFamily: 'raleway'),)],),Spacer(),
            IconButton(onPressed: () {Navigator.pushNamed(context, '/notifications');}, icon: Icon(Icons.arrow_forward_ios_outlined,
            color: Color(0xFF2A3F74),size: 32,))],)),
      //second box
      SizedBox(height: 10,),Container(
          margin: EdgeInsets.only(left: 20,right: 20),padding: EdgeInsets.all(11),
          height: 60,width: double.infinity,decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,
              color: Color(0xFF000000).withOpacity(0.25)),]),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 8,),Text('04 oct 2022 - 04 nov 2022',style: TextStyle(fontFamily: 'raleway',
                  fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xFFA3A3A3)),),
                Text('Rs. 350',style: TextStyle(fontSize: 12,color: Color(0xFFA3A3A3),
                    fontWeight: FontWeight.w500,fontFamily: 'raleway'),)],),Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined,
                color: Color(0xFF2A3F74),size: 32,))],)),
      //third box
      SizedBox(height: 10,),Container(
          margin: EdgeInsets.only(left: 20,right: 20),padding: EdgeInsets.all(11),
          height: 60,width: double.infinity,decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,
              color: Color(0xFF000000).withOpacity(0.25)),]),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 8,),Text('04 nov 2022 - 04 dec 2022',style: TextStyle(fontFamily: 'raleway',
                  fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xFFA3A3A3)),),
                Text('Rs. 350',style: TextStyle(fontSize: 12,color: Color(0xFFA3A3A3),
                    fontWeight: FontWeight.w500,fontFamily: 'raleway'),)],),Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined,
                color: Color(0xFF2A3F74),size: 32,))],)),
      //fourth box
      SizedBox(height: 10,),Container(
          margin: EdgeInsets.only(left: 20,right: 20),padding: EdgeInsets.all(11),
          height: 60,width: double.infinity,decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,
              color: Color(0xFF000000).withOpacity(0.25)),]),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 8,),Text('04 dec 2022 - 04 jan 2023',style: TextStyle(fontFamily: 'raleway',
                  fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xFFA3A3A3)),),
                Text('Rs. 350',style: TextStyle(fontSize: 12,color: Color(0xFFA3A3A3),
                    fontWeight: FontWeight.w500,fontFamily: 'raleway'),)],),Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined,
                color: Color(0xFF2A3F74),size: 32,))],)),
      //fifth box
      SizedBox(height: 10,),Container(
          margin: EdgeInsets.only(left: 20,right: 20),padding: EdgeInsets.all(11),
          height: 60,width: double.infinity,decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,
              color: Color(0xFF000000).withOpacity(0.25)),]),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 8,),Text('04 jan 2023 - 04 feb 2023',style: TextStyle(fontFamily: 'raleway',
                  fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xFFA3A3A3)),),
                Text('Rs. 350',style: TextStyle(fontSize: 12,color: Color(0xFFA3A3A3),
                    fontWeight: FontWeight.w500,fontFamily: 'raleway'),)],),Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined,
                color: Color(0xFF2A3F74),size: 32,))],)),
    ])],),
    ),);
  }
}
