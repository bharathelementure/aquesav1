






import 'package:aquessa/circularSetDailyLiit.dart';
import 'package:aquessa/graph.dart';
import 'package:aquessa/nameDevice.dart';
import 'package:aquessa/notifications.dart';
import 'package:aquessa/ownerutility.dart';
import 'package:aquessa/payments&invoices.dart';
import 'package:aquessa/qrCodeScanner.dart';
import 'package:aquessa/registertion.dart';
import 'package:aquessa/setDailyLimit.dart';
import 'package:aquessa/splashScreen.dart';
import 'package:aquessa/darkotp.dart';
import 'package:aquessa/otpVerification.dart';
import 'package:aquessa/utility.dart';
import 'package:flutter/material.dart';
import 'package:native_notify/native_notify.dart';
// import 'package:native_notify/native_notify.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(2055, '5Z6FJ3jSKqhPM651yKdb51', null, null);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splashScreen',
    routes: {
      '/splashScreen':(context) => SplashScreen(),
      '/registration':(context) => Registration(),
      '/otpVerification':(context) => OtpVerification(),
      '/setDailyLimit':(context) => SetDailyLimit(),
      '/darkOTP':(context) => DarkOTP(),
      '/circularsetDailyLimit':(context) => CircularSetDailyLimit(),
      '/utility':(context) => Utility(),
      '/ownerutility':(context) => OwnerUtility(),
      '/nameDevice':(context) => NameDevice(),
      '/paymentsInvoices':(context) => PaymentInvoices(),
      '/notifications':(context) => Notifications(),
      '/graph':(context) => Graph(),
      '/qrCodeScanner':(context) => QrCodeScanner()
    },
  ));
}

