import 'package:aquessa/page/navdrwer.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SetDailyLimit extends StatefulWidget {
  final volumeValue;
  const SetDailyLimit({Key? key, this.volumeValue}) : super(key: key);

  @override
  State<SetDailyLimit> createState() => _SetDailyLimitState();
}

class _SetDailyLimitState extends State<SetDailyLimit> {
  String _value = 'one';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A70A1),
      drawer: NavDrawer(),
      appBar: AppBar(
        centerTitle: true,
        //drop down items
        /*title: DropdownButton(items:
      [DropdownMenuItem(child: Text('16 sep 2022',style:
      TextStyle(fontFamily: 'raleway',fontSize: 12,fontWeight: FontWeight.w500,
          color: Color(0xFF2A3F74)),),value: 'one',),
        DropdownMenuItem(child: Text('17 sep 2022',style:
        TextStyle(fontFamily: 'raleway',fontSize: 12,fontWeight: FontWeight.w500,
            color: Color(0xFF2A3F74)),),value: 'two',)],
          onChanged: (String ) {setState(() => _value = _value);},),*/
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Color(0xFF2A3F74),
                size: 26,
              ))
        ],
        backgroundColor: Color(0xFFFFFFFF),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.menu,
                color: Color(0xFF5075A9),
                size: 27,
              ),
            );
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /*WaveWidget(
                  config: CustomConfig(durations: [
                    18000,
                    30000,
                    60000
                  ], heightPercentages: [
                    0.65,
                    0.66,
                    0.68
                  ], colors: [
                    Color(0xFFAAD7FB),
                    Color(0xFF94CFFF),
                    Color(0xFFA5D4F9)
                  ]),
                  size: Size(double.infinity, 200),
                  waveAmplitude: 35,
                  backgroundColor: Color(0xFFFFFFFF),
                ),*/
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Today's Consumption",
                  style: TextStyle(
                      fontFamily: 'raleway',
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF)),
                ),
                SizedBox(
                  height: 48,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${widget.volumeValue.ceil().toString()}',
                              style: TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 100,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              '%',
                              style: TextStyle(
                                  fontFamily: 'inter',
                                  fontSize: 50,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 0,
                ),
                Text(
                  'Litres',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      fontFamily: 'raleway',
                      color: Color(0xFFFFFFFF)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 234,
                    height: 47,
                    child: RaisedButton(
                        elevation: 5,
                        onPressed: () {
                          Navigator.pushNamed(context, '/utility');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.all(0),
                        child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xFF6FADE0),
                                  Color(0xFF4483D0)
                                ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Container(
                                constraints: BoxConstraints(
                                    minWidth: 234, minHeight: 47),
                                alignment: Alignment.center,
                                child: Text(
                                  'RESET LIMIT',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 14,
                                      fontFamily: 'inter',
                                      fontWeight: FontWeight.w600),
                                ))))),
                SizedBox(
                  height: 121,
                ),
                WaveWidget(
                  config: CustomConfig(durations: [
                    18000,
                    30000,
                    60000
                  ], heightPercentages: [
                    -widget.volumeValue*0.0064,
                    -widget.volumeValue*0.0074,
                    -widget.volumeValue*0.0084
                  ], colors: [
                    Color(0xFFAAD7FB),
                    Color(0xFF94CFFF),
                    Color(0xFFA5D4F9)
                  ]),
                  size: Size(double.infinity, 128),
                  waveAmplitude: 35,
                  backgroundColor: Color(0xFF3A70A1),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
