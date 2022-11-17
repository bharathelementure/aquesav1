import 'package:flutter/material.dart';

class CreateAcountPage extends StatelessWidget {
   CreateAcountPage({Key? key}) : super(key: key);

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFFFFF),body: SingleChildScrollView(reverse: true,
      child: Form(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [SizedBox(height: 10,),Text('Sign Up',style:
        TextStyle(color: Color(0xFF12172B),
            fontSize: 25,fontFamily: 'raleway',fontWeight: FontWeight.w700),),
          SizedBox(height: 15,),
          Text('to continue',style: TextStyle(color:
          Color(0xFF12172B),fontSize: 12,fontFamily: 'raleway',
              fontWeight: FontWeight.w500),),
          //name
          SizedBox(height: 30),Container(padding: EdgeInsets.only(left: 25,right: 25),child:
          TextFormField(decoration: InputDecoration(border: OutlineInputBorder
            (borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: 'Bharath',hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,
                  fontFamily: 'raleway',color: Color(0xFF12172B)),filled: true,
              fillColor: Color(0xFFFFFFFF),focusedBorder: OutlineInputBorder(borderSide:
              BorderSide(color: Color(0xFF32B7E1),width: 2),borderRadius:
              BorderRadius.all(Radius.circular(10))),
              labelText: 'Name',labelStyle: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500,fontFamily: 'raleway',color: Color(0xFF12172B))),
            keyboardType: TextInputType.name,style: TextStyle(color: Color(0xFF12172B),
                fontSize: 12,fontFamily: 'raleway',
                fontWeight: FontWeight.w500, letterSpacing: 2),),),
          //mobile number
          SizedBox(height: 30),Container(padding: EdgeInsets.only(left: 25,right: 25),child:
          TextFormField(decoration: InputDecoration(border: OutlineInputBorder
            (borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: '9530847184',hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,
                  fontFamily: 'raleway',color: Color(0xFF12172B)),filled: true,
              fillColor: Color(0xFFFFFFFF),focusedBorder: OutlineInputBorder(borderSide:
              BorderSide(color: Color(0xFF32B7E1),width: 2),borderRadius:
              BorderRadius.all(Radius.circular(10))),
              labelText: 'Mobile Number',labelStyle: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500,fontFamily: 'raleway',color: Color(0xFF12172B))),
            keyboardType: TextInputType.phone,style: TextStyle(color: Color(0xFF12172B),
                fontSize: 12,fontFamily: 'raleway',letterSpacing: 2),),),
          //email/gmail
          SizedBox(height: 30),Container(padding: EdgeInsets.only(left: 25,right: 25),child:
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder
              (borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: '@gmail',hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,
                    fontFamily: 'raleway',color: Color(0xFF12172B)),filled: true,
                fillColor: Color(0xFFFFFFFF),focusedBorder: OutlineInputBorder(borderSide:
                BorderSide(color: Color(0xFF32B7E1),width: 2),borderRadius:
                BorderRadius.all(Radius.circular(10))),
                labelText: 'Email ID',labelStyle: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.w500,fontFamily: 'raleway',color: Color(0xFF12172B))),
            keyboardType: TextInputType.emailAddress,style: TextStyle(color: Color(0xFF12172B),
            fontSize: 12,fontFamily: 'raleway',),),),
          //block no.
          SizedBox(height: 30),Container(padding: EdgeInsets.only(left: 25,right: 25),child:
          TextFormField(decoration: InputDecoration(border: OutlineInputBorder
            (borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: '312 WEST',hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,
                  fontFamily: 'raleway',color: Color(0xFF12172B)),filled: true,
              fillColor: Color(0xFFFFFFFF),focusedBorder: OutlineInputBorder(borderSide:
              BorderSide(color: Color(0xFF32B7E1),width: 2),borderRadius:
              BorderRadius.all(Radius.circular(10))),
              labelText: 'Block No.',labelStyle: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500,fontFamily: 'raleway',color: Color(0xFF12172B))),
            keyboardType: TextInputType.name,style: TextStyle(color: Color(0xFF12172B),
              fontSize: 12,fontFamily: 'raleway',),),),
          //house no
          SizedBox(height: 30),Container(padding: EdgeInsets.only(left: 25,right: 25),child:
          TextFormField(decoration: InputDecoration(border: OutlineInputBorder
            (borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: '584',hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,
                  fontFamily: 'inter',color: Color(0xFF12172B)),filled: true,
              fillColor: Color(0xFFFFFFFF),focusedBorder: OutlineInputBorder(borderSide:
              BorderSide(color: Color(0xFF32B7E1),width: 2),borderRadius:
              BorderRadius.all(Radius.circular(10))),
              labelText: 'House No.',labelStyle: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.w500,fontFamily: 'raleway',color: Color(0xFF12172B))),
            keyboardType: TextInputType.streetAddress,style: TextStyle(color: Color(0xFF12172B),
              fontSize: 12,fontFamily: 'raleway',),),),
          //button
          SizedBox(height: 40),
          FloatingActionButton(onPressed: (){Navigator.pushNamed(context, '/darkOTP');
          },backgroundColor: Color(0xff32B7E1),
            child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFF12172B),
              size: 40,),)],)),),);
  }
}
