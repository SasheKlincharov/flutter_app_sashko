import 'package:flutter/material.dart';

class Exercise {
  int exerciseId;
  String image;
  String nameExercise;
  String descriptionExercise;
  MuscleGroup muscleGroup;
  String repetitions;
  String imageForExercise;
  String videoID;


  Exercise(
      {required this.exerciseId,
      required this.image,
      required this.nameExercise,
      required this.descriptionExercise,
      required this.muscleGroup,
      required this.repetitions,
      required this.imageForExercise,
      this.videoID = "Z-6erGcT-qw"}) ;
}


enum MuscleGroup {
  CHEST,
  BACK,
  SHOULDERS,
  FRONTLEGS,
  BACKLEGS,
  ABDOMEN,
  BUTTOCS,
  BICEPS,
  TRICEPS,
  FOREARM,
}