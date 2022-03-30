// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/models/exercise.dart';
import 'package:flutter_app_sashko/widgets/exercise_details.dart';

class ExerciseCard extends StatelessWidget {
  Exercise exercise;

  ExerciseCard(this.exercise);

  void _showDetails(BuildContext context) {
  Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ExerciseDetails(this.exercise)));
  
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SingleChildScrollView(
      
      child: Container(
        child: Card(
                  color: Colors.white,
                  elevation: 8,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                  child: ListTile(
                    title: Text(
                      exercise.nameExercise.characters.characterAt(0).toUpperCase().toString() + exercise.nameExercise.substring(1,exercise.nameExercise.length),
                      style: TextStyle(fontSize: 20, fontFamily: "Helvetica"),
                    ),
                    onTap: () => _showDetails(context),
                    subtitle: Text(exercise.descriptionExercise.substring(0, 200) +
                        "..."),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://wallpaperaccess.com/full/2481596.jpg",
                          scale: 3.0),
                      radius: 30,
                    ),
                    trailing: Text(
                      exercise.muscleGroup.name.toUpperCase(),
                      
                      style: TextStyle(
                          fontFamily: "fantasy serif",
                          fontWeight: FontWeight.bold),
                    ),
                  )),
      ),
    );
  }

} 
