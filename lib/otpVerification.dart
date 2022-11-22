// ignore_for_file: deprecated_member_use, avoid_print, file_names

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
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            reverse: true,
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WaveWidget(
                      config: CustomConfig(durations: [
                        18000,
                        30000,
                        60000
                      ], heightPercentages: [
                        0.65,
                        0.66,
                        0.68
                      ], colors: [
                        const Color(0xFFAAD7FB),
                        const Color(0xFFA5D4F9),
                        const Color(0xFFFFFFFF)
                      ]),
                      size: const Size(double.infinity, 250),
                      waveAmplitude: 35,
                      backgroundColor: const Color(0xFF2E6294)),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'OTP Verification',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'raleway',
                        color: Color(0xFF2A3F74)),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Enter the otp sent to',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'raleway',
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF2A3F74)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFF2A3F74),
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        )),
                      ),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF12172B),
                        fontSize: 14,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Didn\'t recieve the OTP ? ',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'raleway',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF676C77)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextButton(
                              onPressed: () => print('Resend btn'),
                              child: const Text(
                                ' RESEND OTP',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'raleway',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF72AFDE)),
                              ))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                      width: 234,
                      height: 47,
                      child: RaisedButton(
                          elevation: 5,
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/graph');
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          padding: const EdgeInsets.all(0),
                          child: Ink(
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF6FADE0),
                                    Color(0xFF4483D0)
                                  ]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Container(
                                  constraints: const BoxConstraints(
                                      minWidth: 234, minHeight: 47),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'VERIFY AND PROCEED',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 14,
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w600),
                                  )))))
                ],
              )
            ])));
  }
}
