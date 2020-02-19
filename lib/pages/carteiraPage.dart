import 'package:finance_quote/finance_quote.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';


class CarteiraPage extends StatefulWidget {
  @override
  _CarteiraPageState createState() => _CarteiraPageState();
}

class _CarteiraPageState extends State<CarteiraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _builderCarteira(),
    );
  }
}

class _builderCarteira extends StatelessWidget {

  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

  List<CircularStackEntry> data = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(311.0, Colors.red[200], rankKey: 'ITUB4'),
        new CircularSegmentEntry(333.0, Colors.green[200], rankKey: 'PETR4'),
        new CircularSegmentEntry(122.0, Colors.blue[200], rankKey: 'KLBN4'),
        new CircularSegmentEntry(123.0, Colors.yellow[200], rankKey: 'MGLU3'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: new EdgeInsets.all(20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                  Text('ITUB4'),
                ],
              ),


              Row(
                children: <Widget>[
                  Container(
                    margin: new EdgeInsets.all(20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                  Text('PETR4'),
                ],
              ),



              Row(
                children: <Widget>[
                  Container(
                    margin: new EdgeInsets.all(20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                  Text('KLBN4'),
                ],
              ),



              Row(
                children: <Widget>[
                  Container(
                    margin: new EdgeInsets.all(20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.yellow[200],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                  Text('MGLU3'),
                ],
              ),


            ],

          ),


          new AnimatedCircularChart(

            key: _chartKey,
            size: const Size(300.0, 300.0),
            initialChartData: data,
            chartType: CircularChartType.Radial,
          ),

        ],
      ),

    );



  }





}

