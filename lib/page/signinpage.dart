
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,body: SingleChildScrollView(
      reverse: true,child: Stack(children: [Column(
      mainAxisAlignment: MainAxisAlignment.start,children: [WaveWidget(
        config: CustomConfig(durations: [18000, 30000,60000],
            heightPercentages: [0.65, 0.66,0.68],colors:
            [Color(0xFFAAD7FB),Color(0xFFA5D4F9),Color(0xFFFFFFFF)]),
        size: Size(double.infinity, 200),waveAmplitude: 35,
      backgroundColor: Color(0xFF2E6294),),SizedBox(height: 20,),
      Text('Registration',style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.w700,fontFamily: 'raleway',
        color: Color(0xFF2A3F74)),),
      SizedBox(height: 20),
      Text('Enter Your mobile number',style: TextStyle(fontSize: 12,
          fontFamily: 'raleway',fontWeight: FontWeight.w500,
          color: Color(0xFF2A3F74)),),
      //enter mobile number
      SizedBox(height: 30),Container(padding: EdgeInsets.only(left: 25,right: 25),
        child:TextFormField(
          decoration: InputDecoration(enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF2A3F74),
                width: 2,style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
            border: OutlineInputBorder(borderRadius:
            BorderRadius.all(Radius.circular(5),)),
          ),keyboardType: TextInputType.number,textAlign: TextAlign.center,style:
        TextStyle(color: Color(0xFF12172B),fontSize: 14,fontFamily: 'inter',
          fontWeight: FontWeight.w600,letterSpacing: 1.5,),),),
      //button
      SizedBox(height: 25),Container(width: 234,height: 47,
        child: RaisedButton(elevation: 5,onPressed: ()
        {Navigator.pushNamed(context, '/otpVerification');},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),padding: EdgeInsets.all(0),child: Ink(decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xFF6FADE0),Color(0xFF4483D0)]),
              borderRadius: BorderRadius.all(Radius.circular(30))),child: Container(
            constraints: BoxConstraints(minWidth: 234,minHeight: 47),
            alignment: Alignment.center,child: Text('SUBMIT',
              textAlign: TextAlign.center,style: TextStyle(color: Color(0xFFFFFFFF),
              fontSize: 15,fontFamily: 'inter',fontWeight: FontWeight.w600),),
          ),)))],
    )],),
    ),);
  }
}
