import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/models/food.dart';
import 'package:flutter_app_sashko/widgets/food_item_card.dart';


class FoodView extends StatelessWidget {

  List<Food> foods = [
    Food(name: "Milk",caloriesPer100Grams: "42 calories and 3.4g of protein",imageOfFood: "milk.jpg"),
    Food(name: "Eggs",caloriesPer100Grams: "77 calories and 12.7g of protein",imageOfFood: "eggs.jpg"),
    Food(name: "Fish meat",caloriesPer100Grams: "206 calories and 27.9g of protein",imageOfFood: "fish.png"),
    Food(name: "Canned fish",caloriesPer100Grams: "241 calories and 24.3g of protein",imageOfFood: "cannedFish.png"),
    Food(name: "Fresh fruits",caloriesPer100Grams: "110-140 calories and 0.5 - 3g of protein",imageOfFood: "fruits.jpg"),
    Food(name: "Cereals",caloriesPer100Grams: "200-300 calories and 10-20g of protein",imageOfFood: "cereals.jpg"),
    Food(name: "Meats",caloriesPer100Grams: "200-400g calories and 20-30g of protein",imageOfFood: "meats.jpg"),
    Food(name: "Cheeses",caloriesPer100Grams: "200-500 calories and 17-29g of protein",imageOfFood: "cheeses.jpg"),
    Food(name: "Vegetables",caloriesPer100Grams: "15-150g calories and 0.1-9.2g of protein",imageOfFood: "vegetables.jpg"),
    Food(name: "Cabbage",caloriesPer100Grams: "19 calories and 21g of protein",imageOfFood: "cereals.jpg"),
    Food(name: "Carrot",caloriesPer100Grams: "37g calories and 1g of protein",imageOfFood: "carrot.jpg"),
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: Text("Display of foods, calories.."),
        actions: [
            Padding(
              padding: EdgeInsets.all(16),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.black87,
      ),
        body: ListView(
          children: 
        [Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/food.jpeg"),
              fit: BoxFit.cover,
              opacity: 0.9
            ),
          ),
          child:Column(children: <Widget> [
            
            for(Food healthWidget in foods) FoodItemCard(healthWidget)
          ]
             
        )),
      ],
        ));
  }
}