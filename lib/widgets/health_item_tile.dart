// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/models/health_widget.dart';
import 'package:flutter_app_sashko/screens/food_view.dart';
import 'package:flutter_app_sashko/screens/health_calculator.dart';

// ignore: must_be_immutable
class HealthItemTile extends StatelessWidget {
  HealthWidget healthWidget;

  HealthItemTile(this.healthWidget);

  void _showDetails(BuildContext context) {
    switch (healthWidget.item.title) {
      case "Health calculator":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => HealthCalculatorView(healthWidget.item)));
        break;
      case "Foods":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => FoodView()));
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                    image: AssetImage("assets/images/healthImageUrl" +
                        this.healthWidget.item.id +
                        ".jpg"),
                    fit: BoxFit.fitHeight,
                    opacity: 0.85)),
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
                      onPressed: () => _showDetails(context),
                      child: Text(this.healthWidget.item.title)),
                ),
              )),
        ],
      ),
    );
  }
}

