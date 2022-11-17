import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
    body: SingleChildScrollView(reverse: true,child: Stack(children: [
    Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
     children:[WaveWidget(config: CustomConfig(durations: [18000,30000,60000],
        heightPercentages: [0.65, 0.66,0.68],
        colors: [Color(0xFFAAD7FB),Color(0xFFA5D4F9),Color(0xFFFFFFFF)]),
        size: Size(double.infinity, 250),waveAmplitude: 35,backgroundColor:
        Color(0xFF2E6294)),SizedBox(height: 30,),
      Text('OTP Verification',style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.bold,fontFamily: 'raleway',
          color: Color(0xFF2A3F74)),),
      SizedBox(height: 20),
      Text('Enter the otp sent to',style: TextStyle(fontSize: 12,
          fontFamily: 'raleway',fontWeight: FontWeight.w700,
          color: Color(0xFF2A3F74)),),
       SizedBox(height: 25,),Container(padding: EdgeInsets.only(left: 25,right: 25),child: TextFormField(
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
       SizedBox(height: 0,),Container(
         child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.center,
         children: [Text('Didn\'t recieve the OTP ? ',style: TextStyle(fontSize: 12,
         fontFamily: 'raleway',fontWeight: FontWeight.w500,color: Color(0xFF676C77)),),
           SizedBox(height: 20,),
         TextButton(onPressed: () => print('Resend btn'),
             child: Text(' RESEND OTP',style: TextStyle(fontSize: 14,
                 fontFamily: 'raleway',fontWeight: FontWeight.w700,
                 color: Color(0xFF72AFDE)),))],)],),),SizedBox(height: 35,),
       Container(width: 234,height: 47,
         child: RaisedButton(elevation: 5,onPressed: ()
         {Navigator.pushNamed(context, '/circularsetDailyLimit');},
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(25),
           ),padding: EdgeInsets.all(0),child: Ink(decoration: BoxDecoration(
               gradient: LinearGradient(colors: [Color(0xFF6FADE0),Color(0xFF4483D0)]),
               borderRadius: BorderRadius.all(Radius.circular(30))),child: Container(
             constraints: BoxConstraints(minWidth: 234,minHeight: 47),
             alignment: Alignment.center,child: Text('VERIFY AND PROCEED',
               textAlign: TextAlign.center,style: TextStyle(color: Color(0xFFFFFFFF),
               fontSize: 14,fontFamily: 'inter',fontWeight: FontWeight.w600),)))))],),)])));
  }
}
