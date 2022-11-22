import 'package:flutter/material.dart';

class CreateAcountPage extends StatelessWidget {
  CreateAcountPage({Key? key}) : super(key: key);

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        reverse: true,
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                  color: Color(0xFF12172B),
                  fontSize: 25,
                  fontFamily: 'raleway',
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'to continue',
              style: TextStyle(
                  color: Color(0xFF12172B),
                  fontSize: 12,
                  fontFamily: 'raleway',
                  fontWeight: FontWeight.w500),
            ),
            //name
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Bharath',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'raleway',
                        color: Color(0xFF12172B)),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF32B7E1), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'raleway',
                        color: Color(0xFF12172B))),
                keyboardType: TextInputType.name,
                style: const TextStyle(
                    color: Color(0xFF12172B),
                    fontSize: 12,
                    fontFamily: 'raleway',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
            ),
            //mobile number
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: '9530847184',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'raleway',
                        color: Color(0xFF12172B)),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF32B7E1), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Mobile Number',
                    labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'raleway',
                        color: Color(0xFF12172B))),
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                    color: Color(0xFF12172B),
                    fontSize: 12,
                    fontFamily: 'raleway',
                    letterSpacing: 2),
              ),
            ),
            //email/gmail
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: '@gmail',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'raleway',
                        color: Color(0xFF12172B)),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF32B7E1), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Email ID',
                    labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'raleway',
                        color: Color(0xFF12172B))),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  color: Color(0xFF12172B),
                  fontSize: 12,
                  fontFamily: 'raleway',
                ),
              ),
            ),
            //block no.
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: '312 WEST',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'raleway',
                        color: Color(0xFF12172B)),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF32B7E1), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Block No.',
                    labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'raleway',
                        color: Color(0xFF12172B))),
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  color: Color(0xFF12172B),
                  fontSize: 12,
                  fontFamily: 'raleway',
                ),
              ),
            ),
            //house no
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: '584',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'inter',
                        color: Color(0xFF12172B)),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF32B7E1), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'House No.',
                    labelStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'raleway',
                        color: Color(0xFF12172B))),
                keyboardType: TextInputType.streetAddress,
                style: const TextStyle(
                  color: Color(0xFF12172B),
                  fontSize: 12,
                  fontFamily: 'raleway',
                ),
              ),
            ),
            //button
            const SizedBox(height: 40),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/darkOTP');
              },
              backgroundColor: const Color(0xff32B7E1),
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0xFF12172B),
                size: 40,
              ),
            )
          ],
        )),
      ),
    );
  }
}
