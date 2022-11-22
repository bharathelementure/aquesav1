import 'package:aquessa/page/allPage.dart';
import 'package:aquessa/page/leakagepage.dart';
import 'package:aquessa/page/paymentspage.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: const Text(
                'Notifications',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'raleway',
                    color: Color(0xFFFFFFFF)),
              ),
              bottom: const PreferredSize(
                preferredSize: Size.square(53),
                child: Material(
                  color: Color(0xFF72AFDE),
                  child: TabBar(
                    labelColor: Color(0xFFFFFFFF),
                    unselectedLabelColor: Color(0xFF676C77),
                    indicatorColor: Color(0xFFFFFFFF),
                    indicatorWeight: 2,
                    tabs: [
                      Tab(
                        text: 'ALL',
                      ),
                      Tab(
                        text: 'PAYMENTS',
                      ),
                      Tab(text: 'LEAKAGE')
                    ],
                  ),
                ),
              ),
              backgroundColor: const Color(0xFF72AFDE)),
          body: const TabBarView(
              children: [AllPage(), PaymentsPage(), LeakagePage()]),
        ));
  }
}
