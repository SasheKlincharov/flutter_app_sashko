// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeItemView extends StatelessWidget {
  HomeItemView();

  // List<List<HomeExercise>> homeExercises = [
  //   [
  //     HomeExercise(
  //         duration: 5, exerciseName: "Squats", imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 5, exerciseName: "Pushups", imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 5, exerciseName: "Burpees", imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 5, exerciseName: "Plank", imageUrl: "homeWorkout.jpg"),
  //   ],
  //   [
  //     HomeExercise(
  //         duration: 10,
  //         exerciseName: "Standing overhead dumbbell presses",
  //         imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 10, exerciseName: "Lunges", imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 10,
  //         exerciseName: "Shadowboxing",
  //         imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 10, exerciseName: "Supermans", imageUrl: "homeWorkout.jpg"),
  //   ],
  //   [
  //     HomeExercise(
  //         duration: 15, exerciseName: "Crunches", imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 15, exerciseName: "Crab walk", imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 15,
  //         exerciseName: "Bear crawl",
  //         imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 15,
  //         exerciseName: "Mountain climbers",
  //         imageUrl: "homeWorkout.jpg"),
  //   ],
  //   [
  //     HomeExercise(
  //         duration: 20,
  //         exerciseName: "Squat Shoulder Press",
  //         imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 20, exerciseName: "Bridges", imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 20,
  //         exerciseName: "Donkey extension",
  //         imageUrl: "homeWorkout.jpg"),
  //     HomeExercise(
  //         duration: 20,
  //         exerciseName: "Jogging in place",
  //         imageUrl: "homeWorkout.jpg"),
  //   ],
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home - No equipment exercises"),
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
                      
                    )
                  ),
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

                          child: Container(
                            padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                      ),
                              child: Text(
                                "Coming soon!",
                                style: TextStyle(
                                    fontFamily: "fantasy serif",
                                    fontWeight: FontWeight.bold),
                              )),
                        )),           
                    // remaining stuffs
                  ])
                ));
  }
}
