


import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  static const  String appliences = "Owner";

  @override
  Widget build(BuildContext context) {
    return
      Drawer(child: Material(color: Color(0xFFFFFFFF),child: ListView(
      children: [DrawerHeader(child: Container(margin: EdgeInsets.only(left: 10,right: 10),
      padding: EdgeInsets.all(5),height: 120,width: double.infinity,decoration:
        BoxDecoration(color: Color(0xFF4A89D2),borderRadius: BorderRadius.circular(5),
        boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 20,
            color: Color(0xFF000000).withOpacity(0.25))]),child:
      Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(Icons.account_circle_rounded,size: 62,color: Color(0xFFFFFFFF),),
      SizedBox(width: 30,),Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('Shefali Singh',style: TextStyle(fontFamily: 'dmsans',
        fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xFFFFFFFF)),),
        SizedBox(height: 10,),Text('+91 9867544567',style: TextStyle(fontSize: 12,
          fontWeight: FontWeight.w400,fontFamily: 'dmsans',color: Color(0xFFABABAB)),),
          /*Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [RadioListTile(title: Text('Owner'),value: "Owner",
              groupValue: appliences, onChanged: (value){}),
            RadioListTile(title: Text('Tenant',style: TextStyle(fontFamily: 'raleway',
            fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xFF181D27)),),
                value: "Tenant", groupValue: appliences, onChanged: (value){})],)*/],),
        Spacer(),IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined,
          color: Color(0xFFFFFFFF),size: 31,))],)),),
        //add house
        SizedBox(height: 0,),Container(margin: EdgeInsets.only(left: 20,right: 20),
          padding: EdgeInsets.all(5),height: 52,width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(5),boxShadow: [BoxShadow(offset: Offset(10, 10),
              blurRadius: 20,color: Color(0xFF000000).withOpacity(0.25))]),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [
            TextButton(onPressed: () {}, child: Text('+ Add house',
              style: TextStyle(fontFamily: 'ralwey',fontSize: 12,fontWeight: FontWeight.w600,
              color: Color(0xFF000000)),))],),),
      //bill payments
      SizedBox(height: 20,),Container(margin: EdgeInsets.only(left: 20,right: 20),
        padding: EdgeInsets.all(15),height: 74,width: double.infinity,
        decoration: BoxDecoration(color: Color(0xFFFFFFFF),borderRadius:
        BorderRadius.circular(5),),child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Icon(Icons.file_copy_outlined,color: Color(0xFF555555),size: 21,),
        SizedBox(width: 10,),Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('Bill Payments ',style: TextStyle(fontSize: 13,
            fontWeight: FontWeight.w600,fontFamily: 'dmsans',color: Color(0xFF181D27)),),
            SizedBox(height: 10,),Text('Manage your bills',style: TextStyle(
                  fontFamily: 'dmsans',fontWeight: FontWeight.w400,fontSize: 11,
              color: Color(0xFFABABAB)),)],),Spacer(),IconButton(onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFFA3A3A3),
                size: 15,))],),),
        //payments settings
        SizedBox(height: 0,),Container(margin: EdgeInsets.only(left: 20,right: 20),
          padding: EdgeInsets.all(15),height: 74,width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFFFFFFFF),borderRadius:
          BorderRadius.circular(5),),child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Icon(Icons.account_balance_wallet_outlined,color: Color(0xFF555555),size: 21,),
              SizedBox(width: 10,),Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [Text('Payment Settings ',style: TextStyle(fontSize: 13,
                    fontWeight: FontWeight.w600,fontFamily: 'dmsans',color: Color(0xFF181D27)),),
                  SizedBox(height: 7,),Text('Manage your account ',style: TextStyle(
                      fontFamily: 'dmsans',fontWeight: FontWeight.w400,fontSize: 11,
                      color: Color(0xFFABABAB)),)],),Spacer(),IconButton(onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFFA3A3A3),
                    size: 15,))],),),
        //log out
        SizedBox(height: 0,),Container(margin: EdgeInsets.only(left: 20,right: 20),
          padding: EdgeInsets.all(15),height: 74,width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFFFFFFFF),borderRadius:
          BorderRadius.circular(5),),child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Icon(Icons.logout_rounded,color: Color(0xFF555555),size: 21,),
              SizedBox(width: 10,),Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [Text('Log Out ',style: TextStyle(fontSize: 13,
                    fontWeight: FontWeight.w600,fontFamily: 'dmsans',color: Color(0xFF181D27)),),
                  SizedBox(height: 10,),Text('To secure account',style: TextStyle(
                      fontFamily: 'dmsans',fontWeight: FontWeight.w400,fontSize: 11,
                      color: Color(0xFFABABAB)),)],),Spacer(),IconButton(onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFFA3A3A3),
                    size: 15,))],),),
        /*more
        SizedBox(height: 0,),Text('More',style: TextStyle(fontSize: 14,
        fontWeight: FontWeight.w600,fontFamily: 'dmsans',color: Color(0xFF181D27)),),*/
        //help and support
        SizedBox(height: 30,),Divider(thickness: 2,color: Colors.blueGrey,),
        Container(margin: EdgeInsets.only(left: 20,right: 20),
          padding: EdgeInsets.all(15),height: 74,width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFFFFFFFF),borderRadius:
          BorderRadius.circular(5),),child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Icon(Icons.circle_notifications_outlined,color: Color(0xFF0601B4),size: 21,),
              SizedBox(width: 20,),Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [Text('Help & Support',style: TextStyle(fontSize: 13,
                    fontWeight: FontWeight.w600,fontFamily: 'dmsans',color: Color(0xFF181D27)),),
                  SizedBox(height: 10,)],),Spacer(),IconButton(onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFFA3A3A3),
                    size: 15,))],),),
        //about app
        SizedBox(height: 0,),Container(margin: EdgeInsets.only(left: 20,right: 20),
          padding: EdgeInsets.all(15),height: 74,width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFFFFFFFF),borderRadius:
          BorderRadius.circular(5),
              /*boxShadow: [BoxShadow(offset: Offset(0, 10),blurRadius: 20,//boxShadow with background colors box
                color: Color(0xFF000000).withOpacity(0.25))]*/
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [Icon(Icons.favorite_border,color: Color(0xFF0601B4),size: 21,),
              SizedBox(width: 20,),Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [Text('About App',style: TextStyle(fontSize: 13,
                    fontWeight: FontWeight.w600,fontFamily: 'dmsans',color: Color(0xFF181D27)),),
                  SizedBox(height: 10,)],),Spacer(),IconButton(onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFFA3A3A3),
                    size: 15,))],),),
      ],),),);
  }
}
