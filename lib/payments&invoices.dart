
import 'package:aquessa/page/invoicepage.dart';
import 'package:aquessa/page/paymenthistorypage.dart';
import 'package:flutter/material.dart';

class PaymentInvoices extends StatefulWidget {
  const PaymentInvoices({Key? key}) : super(key: key);

  @override
  State<PaymentInvoices> createState() => _PaymentInvoicesState();
}

class _PaymentInvoicesState extends State<PaymentInvoices> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        centerTitle: true,title: Text('Payments & Invoices',
        style: TextStyle(fontSize: 25,fontFamily: 'raleway',fontWeight: FontWeight.w700,
        color: Color(0xFFFFFFFF)),),bottom: PreferredSize(preferredSize: Size.square(53),
          child: Material(color: Color(0xFF72AFDE),child: TabBar(labelColor: Color(0xFFFFFFFF),
            unselectedLabelColor: Color(0xFF676C77),indicatorColor: Color(0xFFFFFFFF),
            indicatorWeight: 2,tabs: [Tab(text: 'INVOICES',),
              Tab(text: 'PAYMENT HISTORY',)],),),),backgroundColor: Color(0xFF72AFDE),),
      body: TabBarView(children: [
        InvoicePage(),
        PaymentHistoryPage(),
      ]),));
  }
}
