// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/widgets/fitness_widget.dart';
import 'package:flutter_app_sashko/widgets/list_item_tile.dart';


class FitnessViewScreen extends StatelessWidget {

  List<FitnessWidget> fitnessItems;
  
  FitnessViewScreen(this.fitnessItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose fitness category"),
        actions: [
            Padding(
              padding: EdgeInsets.all(16),
              
              
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.black87,
        ),
      body: Column(
        children: <Widget> [
          for(FitnessWidget item in fitnessItems) ListItemTile(item)
        ]
           
      ),
      
    );
  }
}
