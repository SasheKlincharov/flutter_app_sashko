import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/models/exercise.dart';
import 'package:flutter_app_sashko/widgets/exercises_view.dart';

class ExercisesView extends StatelessWidget {
  List<Exercise> exercises;

  ExercisesView(this.exercises);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(exercises[0].muscleGroup.name + " exercises"),
          actions: [
            Padding(
              padding: EdgeInsets.all(16),
            ),
            Icon(Icons.more_vert),
          ],
          backgroundColor: Colors.black87,
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 150),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/gym_cover.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.9,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(30.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: ButtonTheme(
                          minWidth: 80,
                          height: 80,
                          child: RaisedButton(
                            color: Colors.red,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(36.0))),
                            onPressed: () {},
                            child: Text(
                              exercises[0].muscleGroup.name,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: "Verdana"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    for (Exercise exercise in exercises) ExerciseCard(exercise)
                  ],
                ),
              ),
              // remaining stuffs
            ]),
          ),
        )); //thats 1
  }
}
