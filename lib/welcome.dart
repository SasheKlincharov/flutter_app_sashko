// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/models/health_widget.dart';
import 'package:flutter_app_sashko/models/list_item.dart';
import 'package:flutter_app_sashko/screens/health.dart';
import 'package:flutter_app_sashko/widgets/fitness_widget.dart';

import 'screens/fitness.dart';

class Welcome extends StatelessWidget {
  Welcome();

  List<FitnessWidget> fitnessWidgets = [
    FitnessWidget(item: ListItem("1", "Gym", "imageUrl1")),
    FitnessWidget(item: ListItem("2", "Home - No equipment", "imageUrl2")),
    FitnessWidget(item: ListItem("3", "Calisthenics", "imageUrl3")),
    FitnessWidget(item: ListItem("4", "Stretching", "imageUrl4")),
  ];

  List<HealthWidget> healthWidgets = [
    HealthWidget(item: ListItem("1", "Health calculator", "healthImage1"), type: Type.CALCULATOR),
    HealthWidget(item: ListItem("2", "Foods", "healthImage2"), type:Type.FOODS),
  ];

  void _pressed(BuildContext context, int type) {
    if (type == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FitnessViewScreen(fitnessWidgets)),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HealthViewScreen(healthWidgets)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.info,
          ),
          title: Text('Select your category'),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.black87,
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image1.jpg"),
                          fit: BoxFit.fitHeight)),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 250.0,
                        height: 40,
                        child: RaisedButton(
                            color: Colors.white70,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0))),
                            onPressed: () => _pressed(context, 0),
                            child: new Text("Fitness")),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image2.jpg"),
                          fit: BoxFit.fitHeight)),
                ),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 250.0,
                        height: 40,
                        child: RaisedButton(
                            color: Colors.white70,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0))),
                            onPressed: () => _pressed(context, 1),
                            child: new Text("Health")),
                      ),
                    )),
              ],
            ),
          ),
        ]));
  }
}
