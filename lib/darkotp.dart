import 'package:flutter/material.dart';

class DarkOTP extends StatefulWidget {
  const DarkOTP({Key? key}) : super(key: key);

  @override
  State<DarkOTP> createState() => _DarkOTPState();
}

class _DarkOTPState extends State<DarkOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
      resizeToAvoidBottomInset: false,body: SingleChildScrollView(
      reverse: true,child: Stack(children: [Container(child:
    Column(mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,children: [
      //Text otp verification
      SizedBox(height: 180,),Text('OTP Verification',style: TextStyle(
          fontWeight: FontWeight.w700,fontSize: 25,fontFamily: 'raleway',
          color: Color(0xFF2A3F74)),),
        //Text enter the otp sent
        SizedBox(height: 20,),
      Text('Enter the OTP sent to you',style: TextStyle(fontFamily: 'raleway',
      fontSize: 12,fontWeight: FontWeight.w700,color: Color(0xFF2A3F74)),),
        //container otp field
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
            fontWeight: FontWeight.w600,letterSpacing: 2.5,),),),SizedBox(height: 0,),Container(
          child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Didnt recieve the OTP?',style: TextStyle(fontSize: 12,
                fontFamily: 'raleway',fontWeight: FontWeight.w500,color: Color(0xFF2A3F74)),),
              TextButton(onPressed: () => print('Resend btn'),
                  child: Text('RESEND OTP',style: TextStyle(fontSize: 14,
                      fontFamily: 'raleway',fontWeight: FontWeight.w700,
                      color: Color(0xFF32B7E1)),))],)],),),
        //button verify
        SizedBox(height: 35),
            Container(width: 234,height: 47,
            child: RaisedButton(elevation: 5,onPressed: ()
            {Navigator.pushNamed(context, '');},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),padding: EdgeInsets.all(0),child: Ink(decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xFF6FADE0),Color(0xFF4483D0)]),
                    borderRadius: BorderRadius.all(Radius.circular(30))),child: Container(
                    constraints: BoxConstraints(minWidth: 234,minHeight: 47),
                    alignment: Alignment.center,child: Text('VERIFY AND PROCEED',
                  textAlign: TextAlign.center,style: TextStyle(color: Color(0xFFFFFFFF),
                    fontSize: 14,fontFamily: 'inter',fontWeight: FontWeight.w600,),)))))],),)],),
    ),);
  }
}
