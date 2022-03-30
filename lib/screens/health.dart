// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/models/health_widget.dart';
import 'package:flutter_app_sashko/models/list_item.dart';
import 'package:flutter_app_sashko/widgets/fitness_widget.dart';
import 'package:flutter_app_sashko/widgets/health_item_tile.dart';
import 'package:flutter_app_sashko/widgets/list_item_tile.dart';


class HealthViewScreen extends StatelessWidget {

  List<HealthWidget> healthItems;
  
  HealthViewScreen(this.healthItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose health category"),
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
          for(HealthWidget healthWidget in healthItems) HealthItemTile(healthWidget)
        ]
           
      ),
      
    );
  }
}
