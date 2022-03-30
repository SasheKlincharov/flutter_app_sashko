// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/models/exercise.dart';

import 'gym_exercises/exercises_view.dart';

class GymItemView extends StatelessWidget {
  GymItemView();

  List<List<Exercise>> exercises = [
    [
      Exercise(
          exerciseId: 1,
          image: "chestImageExercise1.jpg",
          nameExercise: "Bench presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.CHEST, repetitions: "12 - 16 reps", imageForExercise: "press1.jpg"),
      Exercise(
          exerciseId: 2,
          image: "chestImageExercise2.jpg",
          nameExercise: "Incline presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.CHEST, repetitions: "12 - 16 reps", imageForExercise: "incline1.jpg"),
      Exercise(
          exerciseId: 3,
          image: "chestImageExercise3.jpg",
          nameExercise: "Decline presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.CHEST, repetitions: "12 - 16 reps", imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 4,
          image: "chestImageExercise4.jpg",
          nameExercise: "Dumbbell presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.CHEST, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
    ],
    [
      Exercise(
          exerciseId: 1,
          image: "backImageExercise1.jpg",
          nameExercise: "Back presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BACK, repetitions: "12 - 16 reps", imageForExercise: "back1.jpg"),
      Exercise(
          exerciseId: 2,
          image: "backImageExercise2.jpg",
          nameExercise: "Back presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BACK, repetitions: "12 - 16 reps", imageForExercise: "back2.jpg"),
      Exercise(
          exerciseId: 3,
          image: "backImageExercise3.jpg",
          nameExercise: "Back presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BACK, repetitions: "12 - 16 reps", imageForExercise: "back3.jpg"),
      Exercise(
          exerciseId: 4,
          image: "backImageExercise4.jpg",
          nameExercise: "Back presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BACK, repetitions: "12 - 16 reps", imageForExercise: "back4.jpg"),
    ],
    [
      Exercise(
          exerciseId: 1,
          image: "shouldersImageExercise1.jpg",
          nameExercise: "Shoulders presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.SHOULDERS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 2,
          image: "shouldersImageExercise2.jpg",
          nameExercise: "Shoulders presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.SHOULDERS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 3,
          image: "shouldersImageExercise3.jpg",
          nameExercise: "Shoulders presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.SHOULDERS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 4,
          image: "shouldersImageExercise4.jpg",
          nameExercise: "Shoulders presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.SHOULDERS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
    ],
    [
      Exercise(
          exerciseId: 1,
          image: "bicepsImageExercise1.jpg",
          nameExercise: "biceps presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BICEPS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 2,
          image: "bicepsImageExercise2.jpg",
          nameExercise: "biceps presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BICEPS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 3,
          image: "bicepsImageExercise3.jpg",
          nameExercise: "biceps presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BICEPS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 4,
          image: "bicepsImageExercise4.jpg",
          nameExercise: "biceps presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BICEPS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
    ],
    [
      Exercise(
          exerciseId: 1,
          image: "tricepsImageExercise1.jpg",
          nameExercise: "triceps presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.TRICEPS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 2,
          image: "tricepsImageExercise2.jpg",
          nameExercise: "triceps presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.TRICEPS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 3,
          image: "tricepsImageExercise3.jpg",
          nameExercise: "triceps presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.TRICEPS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 4,
          image: "tricepsImageExercise4.jpg",
          nameExercise: "triceps presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.TRICEPS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
    ],
    [
      Exercise(
          exerciseId: 1,
          image: "frontLegsImageExercise1.jpg",
          nameExercise: "frontLegs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.FRONTLEGS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 2,
          image: "frontLegsImageExercise2.jpg",
          nameExercise: "frontLegs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.FRONTLEGS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 3,
          image: "frontLegsImageExercise3.jpg",
          nameExercise: "frontLegs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.FRONTLEGS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 4,
          image: "frontLegsImageExercise4.jpg",
          nameExercise: "frontLegs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.FRONTLEGS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
    ],
    [
      Exercise(
          exerciseId: 1,
          image: "buttocsImageExercise1.jpg",
          nameExercise: "buttocs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BUTTOCS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 2,
          image: "buttocsImageExercise2.jpg",
          nameExercise: "buttocs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BUTTOCS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 3,
          image: "buttocsImageExercise3.jpg",
          nameExercise: "buttocs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BUTTOCS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 4,
          image: "buttocsImageExercise4.jpg",
          nameExercise: "buttocs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BUTTOCS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
    ],
    [
      Exercise(
          exerciseId: 1,
          image: "backLegsImageExercise1.jpg",
          nameExercise: "backLegs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BACKLEGS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 2,
          image: "backLegsImageExercise2.jpg",
          nameExercise: "backLegs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BACKLEGS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 3,
          image: "backLegsImageExercise3.jpg",
          nameExercise: "backLegs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BACKLEGS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 4,
          image: "backLegsImageExercise4.jpg",
          nameExercise: "backLegs presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.BACKLEGS, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
    ],
    [
      Exercise(
          exerciseId: 1,
          image: "forearmImageExercise1.jpg",
          nameExercise: "forearm presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.FOREARM, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 2,
          image: "forearmImageExercise2.jpg",
          nameExercise: "forearm presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.FOREARM, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 3,
          image: "forearmImageExercise3.jpg",
          nameExercise: "forearm presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.FOREARM, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 4,
          image: "forearmImageExercise4.jpg",
          nameExercise: "forearm presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.FOREARM, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
    ],
    [
      Exercise(
          exerciseId: 1,
          image: "abdomenImageExercise1.jpg",
          nameExercise: "abdomen presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.ABDOMEN, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 2,
          image: "abdomenImageExercise2.jpg",
          nameExercise: "abdomen presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.ABDOMEN, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 3,
          image: "abdomenImageExercise3.jpg",
          nameExercise: "abdomen presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.ABDOMEN, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
      Exercise(
          exerciseId: 4,
          image: "abdomenImageExercise4.jpg",
          nameExercise: "abdomen presses",
          descriptionExercise: "Exercise is physical activity that is planned, structured, and repetitive for the purpose of conditioning the body. Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility.",
          muscleGroup: MuscleGroup.ABDOMEN, repetitions: "12 - 16 reps",imageForExercise: "dumbell.jpg"),
    ]
  ];

  void navigateToExercisesTypeScreen(BuildContext context, int id) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => ExercisesView(exercises[id])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gym exercises"),
        actions: [
          Padding(
            padding: EdgeInsets.all(16),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.black87,
      ),
      body: Container(
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
                        borderRadius: BorderRadius.all(Radius.circular(36.0))),
                    onPressed: () {},
                    child: Text(
                      "GYM",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Verdana"),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.white,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 0),
                            child: Text(
                              "CHEST",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 1
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(70, 18, 18, 18),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.red,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 1),
                            child: Text(
                              "BACK",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 2
              ],
            ), //thats 1 row for the 1 two circles
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.red,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 2),
                            child: Text(
                              "SHOULDERS",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 1
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(60, 18, 18, 18),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.white,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 3),
                            child: Text(
                              "BICEPS",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 2
              ],
            ), //thats 2 rows for the 2 circles
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.white,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 4),
                            child: Text(
                              "TRICEPS",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 1
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(65, 18, 18, 18),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.red,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 5),
                            child: Text(
                              "FRONT LEGS",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 2
              ],
            ), //thats row 3
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.red,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 6),
                            child: Text(
                              "BUTTOCS",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 1
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(70, 18, 18, 18),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.white,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 7),
                            child: Text(
                              "BACK LEGS",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 2
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.white,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 8),
                            child: Text(
                              "FOREARM",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 1
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.jpg"),
                          fit: BoxFit.none)),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(70, 18, 18, 18),
                    child: Center(
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 70,
                        child: RaisedButton(
                            color: Colors.red,
                            elevation: 6,
                            hoverColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.0))),
                            onPressed: () =>
                                navigateToExercisesTypeScreen(context, 9),
                            child: Text(
                              "ABDOMEN",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    )), //thats 2
              ],
            ),
          ],
        ),
      ),
    );
  }
}
