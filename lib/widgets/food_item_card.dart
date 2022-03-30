
import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/models/food.dart';


class FoodItemCard extends StatelessWidget {
  Food item;
  
  FoodItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: ListTile(
        leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/" + item.imageOfFood,
                      ),
                  radius: 30,
                ),
        title: Text(
          item.name,
          style: TextStyle(fontSize: 20, fontFamily: "Helvetica"),
        ),
        onTap: () => null,
        subtitle: Text(item.name+" has/have " + item.caloriesPer100Grams),
        trailing: Text("per 100 g")
      ));
  }
}