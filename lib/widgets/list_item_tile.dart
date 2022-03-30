// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/screens/calisthenics.dart';
import 'package:flutter_app_sashko/screens/gym.dart';
import 'package:flutter_app_sashko/screens/home.dart';
import 'package:flutter_app_sashko/screens/stretching.dart';
import 'package:flutter_app_sashko/widgets/fitness_widget.dart';

// ignore: must_be_immutable
class ListItemTile extends StatelessWidget {
  FitnessWidget fitnessWidget;

  ListItemTile(this.fitnessWidget);

  void _showDetails(BuildContext context) {
    switch (fitnessWidget.item.title) {
      case "Gym":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => GymItemView()));
        break;
      case "Home - No equipment":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => HomeItemView()));
        break;
      case "Calisthenics":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => CalisthencisItemView()));
        break;
      case "Stretching":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => StretchingItemView()));
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
                    image: AssetImage("assets/images/imageUrl" +
                        this.fitnessWidget.item.id +
                        ".jpg"),
                    fit: BoxFit.fitWidth)),
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
                      child: Text(this.fitnessWidget.item.title)),
                ),
              )),
        ],
      ),
    );
  }
}

