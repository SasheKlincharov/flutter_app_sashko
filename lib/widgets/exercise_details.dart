// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sashko/models/exercise.dart';
import 'package:url_launcher/url_launcher.dart';


class ExerciseDetails extends StatefulWidget {
  Exercise exercise;

  ExerciseDetails(this.exercise) {}

  @override
  State<ExerciseDetails> createState() => _ExerciseDetailsState();
}

class _ExerciseDetailsState extends State<ExerciseDetails> {
  var val = "N/A";

  // YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines
  void callFunc(int i) {
    setState(() {
      if (i > 20)
        val = "WOW";
      else
        val = "GOOD";
    });
  }

  _launchURL () async {
      if (!await launch(widget.exercise.videoID)) throw 'Could not launch';
      launch( "https://www.youtube.com/watch?v="+widget.exercise.videoID );

  }

  @override
  Widget build(BuildContext context) {
    var weightController = new TextEditingController(text: "0");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.exercise.nameExercise.characters
                  .characterAt(0)
                  .toUpperCase()
                  .toString() +
              widget.exercise.nameExercise
                  .substring(1, widget.exercise.nameExercise.length),
        ),
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
          ),
        ),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    color: Colors.brown,
                    height: 70.0,
                    alignment: Alignment.center,
                    child: Text(
                      widget.exercise.nameExercise.characters
                  .characterAt(0)
                  .toUpperCase()
                  .toString() +
              widget.exercise.nameExercise
                  .substring(1, widget.exercise.nameExercise.length),
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: "Verdana",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    // A fixed-height child.
                    color: Colors.black87,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(12),

                    child: Text(
                      widget.exercise.descriptionExercise,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontFamily: "Verdana",
                          fontWeight: FontWeight.lerp(
                              FontWeight.normal, FontWeight.bold, 5)),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.black,
                          ),
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(12),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: ButtonTheme(
                                  minWidth: 50.0,
                                  height: 40,
                                  child: RaisedButton(
                                      color: Colors.white,
                                      elevation: 6,
                                      hoverColor: Colors.blueAccent,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(16.0))),
                                      onPressed: () => null,
                                      child: Text(
                                          "See a video explanation for this exercise!")),
                                ),
                              )),
                        ),
                        Container(
                          color: Colors.black87,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(12),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 100),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/" +
                                        widget.exercise.imageForExercise),
                                    fit: BoxFit.fitWidth)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                      color: Colors.white,
                      elevation: 8,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      child: ListTile(
                        title: Text(
                          "Current lifting Weight",
                          style:
                              TextStyle(fontSize: 20, fontFamily: "Helvetica"),
                        ),
                        onTap: () =>  _launchURL,
  
                        subtitle: Padding(
                          padding: EdgeInsets.all(5),
                          child: TextFormField(
                            controller: weightController,
                            keyboardType: TextInputType.number,
                            onFieldSubmitted: (_) =>
                                callFunc(int.parse(weightController.text)),
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Enter current weight lift',
                            ),
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/logoLift.png",
                          ),
                          radius: 30,
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "STATUS",
                              style: TextStyle(
                                  fontFamily: "fantasy serif",
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 15, 5, 0),
                              child: Text(
                                val,
                                style: val == "WOW"
                                    ? TextStyle(
                                        fontFamily: "fantasy serif",
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold)
                                    : TextStyle(
                                        fontFamily: "fantasy serif",
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )),
                  Card(
                      
                      color: Colors.white,
                      elevation: 8,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      child:ListTile(
                      title: Text(
                        "Repetitions",
                        style: TextStyle(fontSize: 20, fontFamily: "Helvetica"),
                      ),
                      onTap: () => null,
                      subtitle: Padding(
                          padding: EdgeInsets.all(5), child: Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 30), child: Text(widget.exercise.repetitions))),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/logo.jpg",
                        ),
                        radius: 30,
                      ),
                      ),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
