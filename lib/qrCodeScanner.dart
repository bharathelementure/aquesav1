
import 'package:aquessa/page/navdrwer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({Key? key}) : super(key: key);

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {

  String _value = 'one';
  final GlobalKey _globalKey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF72AFDE),endDrawer: Drawer(
      child: ListView(padding: EdgeInsets.zero,children: [DrawerHeader(
          child: Icon(Icons.account_balance_wallet_rounded,),decoration: BoxDecoration(),)],),),
      drawer: NavDrawer(),
    appBar: AppBar(
      /*centerTitle: true,title: DropdownButton(
      items: [DropdownMenuItem(child: Text('16 sep 2022',style:
    TextStyle(fontFamily: 'raleway',fontSize: 12,fontWeight: FontWeight.w500,
        color: Color(0xFF2A3F74)),),value: 'one',),
        DropdownMenuItem(child: Text('17 sep 2022',style:
        TextStyle(fontFamily: 'raleway',fontSize: 12,fontWeight: FontWeight.w500,
            color: Color(0xFF2A3F74)),),value: 'two',)], onChanged: (String) {
      setState(() => _value = _value);}),*/
      elevation: 0,backgroundColor: Color(0xFF72AFDE),
    leading: Builder(builder: (context){return IconButton(onPressed: ()
        => Scaffold.of(context).openDrawer(),
        icon: Icon(Icons.account_circle,color: Color(0xFFFFFFFF),size: 27,));}),),
    resizeToAvoidBottomInset: false,body: Center(child: SingleChildScrollView(
          reverse: true, child: Stack(children: [Container(child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children: [Container(
            height: 300,width: 300,child: QRView(key: _globalKey,
            onQRViewCreated: qr)),Center(
          child: (result != null) ? Text("Barcode Type: ${describeEnum(result!.format)} "
              "Data: ${result!.code}"): Text("Tap to scan",style: TextStyle(
            fontWeight: FontWeight.w700,fontFamily: 'raleway',fontSize: 25,
            color: Color(0xFF2A3F74)),),
        )],),)],),),));
  }
}
