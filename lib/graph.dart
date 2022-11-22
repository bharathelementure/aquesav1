// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:aquessa/page/navdrwer.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  //date list with scroll
  Widget DateList() {
    final dateList = [
      '01',
      '02',
      '03',
      '04',
      '05',
      '06',
      '07',
      '08',
      '09',
      '10',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20',
      '21',
      '22',
      '23',
      '24',
      '25',
      '26',
      '27',
      '28',
      '29',
      '30'
    ];
    return SizedBox(
        height: 50,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemCount: dateList.length,
          itemBuilder: (_, index) => Container(
            width: 48,
            height: 28,
            decoration: BoxDecoration(
              border: Border.all(
                  color: index == 0 ? const Color(0xff3B7AC5) : const Color(0xffD6D6D6),
                  width: 3),
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffFFFFFF),
            ),
            child: Center(
              child: Text(
                dateList[index],
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'inter',
                    color: Color(0xff2A3F74)),
              ),
            ),
          ),
        ));
  }

  //Text of liters saved
  Widget LitersOftext() {
    return SizedBox(
        height: 50,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Text(
            '100',
            style: TextStyle(
                fontFamily: 'inter',
                fontWeight: FontWeight.w700,
                fontSize: 40,
                color: Color(0xff2A3F74)),
          ),
          const SizedBox(width: 7),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Litres',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Raleway',
                    color: Color(0xff2A3F74)),
              ),
              SizedBox(height: 3),
              Text(
                'of 250 litres',
                style: TextStyle(
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xff2A3F74)),
              )
            ],
          ),
        ]));
  }

  //water graph
  Widget waterGraph() {
    final bool showTouchTooltip;
    final double? interval;

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: LineChart(
          swapAnimationCurve: Curves.easeInOut,
          swapAnimationDuration: const Duration(milliseconds: 400),
          LineChartData(
              minX: 1,
              maxX: 8,
              minY: 0,
              maxY: 6,
              titlesData: FlTitlesData(
                show: true,
                leftTitles: AxisTitles(sideTitles: SideTitles()),
                rightTitles: AxisTitles(sideTitles: SideTitles()),
                topTitles: AxisTitles(sideTitles: SideTitles()),
                // LineTitles.getTitleData(),
              ),
              lineTouchData: LineTouchData(
                  enabled: showTouchTooltip = true,
                  touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: const Color(0xff2A3F74),
                    getTooltipItems: (touchedSpots) => touchedSpots
                        .map((spot) => LineTooltipItem(
                              '${NumberFormat.simpleCurrency().format(spot.x)}\n'
                              '${spot.y.toInt()}:00',
                              const TextStyle(),
                            ))
                        .toList(),
                  )),
              gridData: FlGridData(
                drawHorizontalLine: false,
                // drawVerticalLine: false
                /* drawVerticalLine: true,
        getDrawingVerticalLine: (_) => FlLine(
          color: Colors.blue,strokeWidth: 0.5
        )*/
              ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                    spots: [
                      const FlSpot(0, 6),
                      const FlSpot(1, 5),
                      const FlSpot(2, 6),
                      const FlSpot(4.9, 5),
                      const FlSpot(6.8, 2.5),
                      const FlSpot(8, 4),
                      const FlSpot(9.5, 3),
                      const FlSpot(11, 4)
                    ],
                    isCurved: true,
                    barWidth: 3,
                    isStrokeCapRound: true,
                    color: const Color(0xff2A3F74),
                    // gradient: LinearGradient(colors: [Color(0x00FFFFFFF),Color(0xffFFFFFF)]),
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                            colors: [
                              const Color(0xff3E8BD4).withOpacity(0),
                              const Color(0xffFBFBFB)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)))
              ])),
    );
  }

  Widget monthData() {
    return SizedBox(height: 40,
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [TextButton(onPressed: () {},
     child: const Text('Week',style: TextStyle(
      fontFamily: 'raleway',fontSize: 12,
      fontWeight: FontWeight.w600,color: Color(0xff2A3F74)
     ),)),
     const SizedBox(width: 10,),
     TextButton(onPressed: () {},
      child:  const Text('Month',style: TextStyle(
      fontFamily: 'raleway',fontSize: 12,
      fontWeight: FontWeight.w600,color: Color(0xff2A3F74)
     ),)),
     const SizedBox(width: 10,),
     TextButton(onPressed: () {},
      child:  const Text('Yearly',style: TextStyle(
      fontFamily: 'raleway',fontSize: 12,
      fontWeight: FontWeight.w600,color: Color(0xff2A3F74)
     ),)),
     ],),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff72AFDE),
      endDrawer: const NavDrawer(),
      appBar:  AppBar(elevation: 10,backgroundColor: const Color(0xff72AFDE),
      leading: Container(padding: const EdgeInsets.only(left: 10,right: 5),),
      title: const Text('Consumption',style: TextStyle(fontSize: 24,
      fontFamily: 'raleway',fontWeight: FontWeight.bold,
      color: Colors.white),),titleSpacing: 0.2,centerTitle: true,),
      body: ListView(
        padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
        children: [
          SafeArea(
            child: Container(
                height: 520,
                color: const Color(0xffFFFFFF),
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [/*
                    const SizedBox(height: 10),
                    Text(DateFormat('d-M-y').format(DateTime.now()),
                    style: const TextStyle(fontFamily: 'raleway',fontSize: 12,fontWeight: FontWeight.w500,
          color: Color(0xFF2A3F74)),),*/
          const SizedBox(height: 20),
                    DateList(),
                    const SizedBox(height: 10,),
                    const Divider(
                      thickness: 3,
                      color:  Color(0xffAFD3F1),
                    ),
                    const SizedBox(height: 10),
                    LitersOftext(),
                    SizedBox(
                      height: 280,
                      child: waterGraph(),
                    ),
                    const Divider(
                      thickness: 3,
                      color: Color(0xffAFD3F1),
                    ),
                    const SizedBox(height: 0),
                    monthData(),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

/*
class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  // late SfRangeValues _values;
  bool showAvg = false;
  List<Color> gradientColors = [Color(0xff23b6e6),Color(0xff02d39a)];

  @override
  /*void initState() {
    _values = SfRangeValues(3, 6);
    super.initState();
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff72AFDE),body: SafeArea(
        child: Column(children: [AspectRatio(aspectRatio: 2/2,
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
    color: Color(0xFFFFFFFF)),child: Padding(padding: EdgeInsets.symmetric(vertical: 20,),
    child: LineChart(LineChartData(minX: 1,maxX: 8,minY: 0,maxY: 6,
        titlesData: FlTitlesData(show: true,
        leftTitles: AxisTitles(sideTitles: SideTitles()),
        rightTitles: AxisTitles(sideTitles: SideTitles()),
        topTitles: AxisTitles(sideTitles: SideTitles())),
        // LineTitles.getTitleData(),

        gridData: FlGridData(drawHorizontalLine: false,
            // show: false,
            getDrawingVerticalLine: (value){return FlLine(color: Color(0xff000000),strokeWidth: 1);}
        ),borderData: FlBorderData(show: true,border: Border.all(color: Color(0xff374d),width: 1),),
    lineBarsData: [LineChartBarData(spots: [FlSpot(0, 3),FlSpot(2.6, 2),FlSpot(4.9, 5),
    FlSpot(6.8, 2.5),FlSpot(8, 4),FlSpot(9.5, 3),FlSpot(11, 4)],isCurved: true,
    color: Color(0xff2A3F74),barWidth: 3,belowBarData: BarAreaData(show: true,
            color: Color(0xffFBFBFB).withOpacity(0.5)))]),
      // showAvg? avgChart() : mainChart(),
    ),),),)],)));


      /*Scaffold(resizeToAvoidBottomInset: false,backgroundColor: Color(0xFFFFFFFF),
    body: SingleChildScrollView(reverse: true,child: Stack(children: [
      Container(height: 350, child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [SizedBox(height: 17,),
        SfRangeSelector(initialValues: _values,min: 2.0,max: 10.0,
        showLabels: true,interval: 1,showTicks: true,activeColor: Color(0xFF3E8BD4),
        inactiveColor: Color(0xFFFBFBFB),enableTooltip: true,
        child: SfCartesianChart(margin: EdgeInsets.all(0),
      primaryXAxis: NumericAxis(isVisible: false),
      primaryYAxis: NumericAxis(isVisible: false, maximum: 6),
      series: [SplineAreaSeries(dataSource: [Data(x: 120.0, y: 2),
        Data(x: 140.0, y: 3),
        Data(x: 180.0, y: 4),
        Data(x: 200.0, y: 5), Data(x: 220.0, y: 6), Data(x: 240.0, y: 7),
        Data(x: 260.0, y: 8), Data(x: 190.0, y: 9), Data(x: 200.0, y: 10),
        Data(x: 210.0, y: 11), Data(x: 220.0, y: 12), Data(x: 230.0, y: 13),
        Data(x: 240.0, y: 14), Data(x: 250.0, y: 15), Data(x: 260.0, y: 16)],
          xValueMapper: (Data sales, int index) => sales.x,
          yValueMapper: (Data sales, int index) => sales.y,
          dataLabelSettings: DataLabelSettings(isVisible: true)),],),)],),)
    ],),),);*/
  }
 /* LineChartData mainChart() {
    return LineChartData(gridData: FlGridData(show: true,drawVerticalLine: true,
    getDrawingHorizontalLine: (value){
      return FlLine(color: Color(0xff37434d),strokeWidth: 1);
    }),titlesData: FlTitlesData(show: true,bottomTitles: AxisTitles(sideTitles: SideTitles(
      showTitles: true,reservedSize: 22,
       /* textStyle: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 16,color: Color(0xff68737d))*/
    )),leftTitles: AxisTitles(sideTitles: SideTitles(
      showTitles: true,reservedSize: 28,))),borderData: FlBorderData(show: true,
    border: Border.all(color: Color(0xff37434d),width: 2)),minX: 0,maxX: 11,
    minY: 0,maxY: 6,lineBarsData: [LineChartBarData(spots: [FlSpot(0, 3),FlSpot(2.6, 2),
          FlSpot(4.9, 5),FlSpot(6.8, 3.1),FlSpot(8, 4),FlSpot(9.5, 3),FlSpot(11, 4),],
        isCurved: true,barWidth: 5,color: Color(0xff23b6e6),isStrokeCapRound: true,
        dotData: FlDotData(show: true),belowBarData: BarAreaData(show: true,
            color: Colors.blue.withOpacity(0.5)))]);
  }
  LineChartData avgChart() {
    return LineChartData(lineTouchData: LineTouchData(enabled: false),
    gridData: FlGridData(show: true,drawHorizontalLine: true,
    getDrawingVerticalLine: (value){return FlLine(color: Color(0xff37434d),
    strokeWidth: 1);},getDrawingHorizontalLine: (value){return FlLine(color: Color(0xff37434d),strokeWidth: 1);}),
    titlesData: FlTitlesData(show: true,bottomTitles: AxisTitles(sideTitles: SideTitles(
      showTitles: true,reservedSize: 22,)),leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
    reservedSize: 28,
        // textStyle: TextStyle(fontSize: 16,color: Color(0xff68737d),)
    ))),
      borderData: FlBorderData(show: true,border: Border.all(color: Color(0xff37434d),width: 1)),
    minX: 0,maxX: 11,minY: 0,maxY: 6,
    lineBarsData: [LineChartBarData(spots: [ FlSpot(0, 3.44),
      FlSpot(2.6, 3.44),
      FlSpot(4.9, 3.44),
      FlSpot(6.8, 3.44),
      FlSpot(8, 3.44),
      FlSpot(9.5, 3.44),
      FlSpot(11, 3.44),],isCurved: true,
    color: Color(0xff63678d),barWidth: 5,isStrokeCapRound: true,dotData: FlDotData(
          show: false),belowBarData: BarAreaData(show: true,color: Colors.deepPurple))],);
  }*/
}

class LineTitles {
  static getTitleData() => FlTitlesData(
    show: true,bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
  reservedSize: 22,
  )));
}

class Data {
  Data({required this.x,required this.y});
  final double x;
  final double y;
}*/
