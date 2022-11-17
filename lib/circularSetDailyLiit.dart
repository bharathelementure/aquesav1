import 'package:aquessa/page/navdrwer.dart';
import 'package:aquessa/setDailyLimit.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class CircularSetDailyLimit extends StatefulWidget {
  CircularSetDailyLimit({Key? key}) : super(key: key);

  @override
  State<CircularSetDailyLimit> createState() => _CircularSetDailyLimitState();
}

class _CircularSetDailyLimitState extends State<CircularSetDailyLimit> {
  double _volumeValue = 10;

  void onVolumeChanged(double value) {
    setState(() {
      _volumeValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
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
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(
                  Icons.menu,
                  color: Color(0xFF5075A9),
                  size: 27,
                ));
          }),
        ),
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                SizedBox(
                  height: 0,
                ),
                Text(
                  'Set daily limit',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      fontFamily: 'raleway',
                      color: Color(0xFF2A3F74)),
                ),
                //Circular moving slider
                SizedBox(
                  height: 0,
                ),
                SfRadialGauge(
                  axes: [
                    RadialAxis(
                      minimum: 0,
                      maximum: 100,
                      startAngle: 0,
                      endAngle: 360,
                      showLabels: false,
                      showTicks: false,
                      radiusFactor: 0.7,
                      axisLineStyle: AxisLineStyle(
                          cornerStyle: CornerStyle.bothFlat,
                          color: Color(0xFFD6D6D6),
                          thickness: 18),
                      pointers: [
                        RangePointer(
                          value: _volumeValue,
                          cornerStyle: CornerStyle.bothCurve,
                          width: 18,
                          sizeUnit: GaugeSizeUnit.logicalPixel,
                          color: Colors.orangeAccent,
                          gradient: SweepGradient(
                              colors: [Color(0xFF6FADE0), Color(0xFF4483D0)],
                              stops: [0.25, 0.75]),
                        ),
                        //marker type
                        MarkerPointer(
                          enableDragging: true,
                          value: _volumeValue,
                          onValueChanged: onVolumeChanged,
                          markerHeight: 22,
                          markerWidth: 22,
                          markerType: MarkerType.circle,
                          color: Color(0xFF6FADE0),
                          borderWidth: 2,
                          borderColor: Color(0xFFFFFFFF),
                        )
                      ],
                      annotations: [
                        GaugeAnnotation(
                            angle: 90,
                            axisValue: 5,
                            positionFactor: 0.1,
                            widget: Text(
                              _volumeValue.ceil().toString() + 'Litres',
                              style: TextStyle(
                                fontSize: 35,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2A3F74),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
                //set button
                Container(
                    width: 234,
                    height: 47,
                    child: RaisedButton(
                        elevation: 5,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SetDailyLimit(volumeValue: _volumeValue,)));
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
                                  'SET',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 14,
                                      fontFamily: 'inter',
                                      fontWeight: FontWeight.w600),
                                ))))),
                //wave widget
                SizedBox(
                  height: 88,
                ),
                WaveWidget(
                  config: CustomConfig(durations: [
                    18000,
                    30000,
                    60000
                  ], heightPercentages: [
                    -_volumeValue.ceil() * 0.0044,
                    -_volumeValue.ceil() * 0.0074,
                    -_volumeValue.ceil() * 0.0054
                  ], colors: [
                    Color(0xFFAAD7FB),
                    Color(0xFF94CFFF),
                    Color(0xFFA5D4F9)
                  ]),
                  size: Size(double.infinity, 78),
                  waveAmplitude: 35,
                )
              ]))
        ]));
  }
}
