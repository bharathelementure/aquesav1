






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
import 'package:aquessa/thank_you.dart';
import 'package:aquessa/utility.dart';
import 'package:flutter/material.dart';
import 'package:native_notify/native_notify.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(2055, '5Z6FJ3jSKqhPM651yKdb51', null, null);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splashScreen',
    routes: {
      '/splashScreen':(context) => const SplashScreen(),
      '/registration':(context) => const Registration(),
      '/otpVerification':(context) => const OtpVerification(),
      '/setDailyLimit':(context) => const SetDailyLimit(),
      '/darkOTP':(context) => const DarkOTP(),
      '/circularsetDailyLimit':(context) => const CircularSetDailyLimit(),
      '/utility':(context) => const Utility(),
      '/ownerutility':(context) => const OwnerUtility(),
      '/nameDevice':(context) => const NameDevice(),
      '/paymentsInvoices':(context) => const PaymentInvoices(),
      '/notifications':(context) => const Notifications(),
      '/graph':(context) => const Graph(),
      '/qrCodeScanner':(context) => const QrCodeScanner(),
      '/thank_you':(context) => const ThankYou()
    },
  ));
}

