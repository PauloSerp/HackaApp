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
        new CircularSegmentEntry(311.0, Colors.red[200], rankKey: 'CDB'),
        new CircularSegmentEntry(333.0, Colors.green[200], rankKey: 'CDI'),
        new CircularSegmentEntry(122.0, Colors.blue[200], rankKey: 'SGV'),
        new CircularSegmentEntry(123.0, Colors.yellow[200], rankKey: 'FUNDOS IMOBILIÁRIOS'),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/iconMedalha.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('1230'),
                  ],
                ),
              ),
            ],
          ),

          Divider(
            height: 20,
          ),

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

                  Text('CDB'),
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

                  Text('CDI'),
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

                  Text('SGV'),
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

                  Text('FUNDOS IMOBILIÁRIOS'),
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

