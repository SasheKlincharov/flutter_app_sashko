// ignore: must_be_immutable
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_sashko/models/list_item.dart';

class HealthCalculatorView extends StatefulWidget {
  ListItem listItem;

  HealthCalculatorView(this.listItem);

  @override
  State<HealthCalculatorView> createState() => _HealthCalculatorViewState();
}

class _HealthCalculatorViewState extends State<HealthCalculatorView> {
  var ageController = new TextEditingController(text: "20");

  var heightController = new TextEditingController(text: "175");

  var weightController = new TextEditingController(text: "70");

  void refreshFunctions() {
    setState(() {
      _idealWeight();
      _bmiCalculate();
      _bodyFat();
    });
  }

  String _idealWeight() {
    if (heightController.text != null &&
        heightController.text != "" &&
        double.tryParse(heightController.text) == null) {
      return "0";
    }
    var val = 50 + (0.91 * (int.parse(heightController.text) - 152.4));
    return val.toStringAsFixed(2);
  }

  String _bmiCalculate() {
    if (heightController.text != null &&
        heightController.text != "" &&
        double.tryParse(heightController.text) == null &&
        weightController.text != null &&
        heightController.text != "" &&
        double.tryParse(weightController.text) == null) {
      return "0";
    }
    return (23 *
            double.parse(heightController.text) *
            1.0 /
            (double.parse(weightController.text) *
                (double.parse(weightController.text))))
        .toStringAsFixed(2);
  }

  String _bodyFat() {
    if (heightController.text != null &&
        heightController.text != "" &&
        double.tryParse(heightController.text) == null &&
        weightController.text != null &&
        heightController.text != "" &&
        double.tryParse(weightController.text) == null &&
        ageController.text != null &&
        ageController.text != "" &&
        double.tryParse(ageController.text) == null) {
      return "0";
    }
    return ((1.39 * double.parse(_bmiCalculate())) +
            (0.16 * int.parse(ageController.text)))
        .toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.listItem.title.characters
                  .characterAt(0)
                  .toUpperCase()
                  .toString() +
              widget.listItem.title.substring(1, widget.listItem.title.length),
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
            image: AssetImage("assets/images/healthImageUrl1.jpg"),
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
                      "BMI Calculator",
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

                    child: Center(
                      child: Text(
                        "What is BMI?\n",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: "Verdana",
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.lerp(
                                FontWeight.normal, FontWeight.bold, 5)),
                      ),
                    ),
                  ),
                  Column(children: [
                    Container(
                      // A fixed-height child.
                      color: Colors.black87,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text(
                        "Body Mass Index (BMI) is a person's weight in kilograms divided by the square of height in meters. A high BMI can indicate high body fatness.",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: "Verdana",
                            fontWeight: FontWeight.lerp(
                                FontWeight.normal, FontWeight.normal, 10)),
                      ),
                    ),
                  ]),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87),
                          color: Colors.black87,
                        ),
                        alignment: Alignment.topLeft,
                        child: Center(
                          child: Container(
                            width: 300,
                            child: Card(
                                color: Colors.white,
                                elevation: 8,
                                margin: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 10.0),
                                child: ListTile(
                                  title: Text(
                                    "Age",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: "Helvetica"),
                                  ),
                                  subtitle: TextFormField(
                                    controller: ageController,
                                    keyboardType: TextInputType.number,
                                    onFieldSubmitted: (_) => refreshFunctions(),
                                    // callFunc(int.parse(weightController.text)),
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      hintText: 'Enter age',
                                    ),
                                  ),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/images/age.png",
                                    ),
                                    radius: 30,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87),
                          color: Colors.black87,
                        ),
                        alignment: Alignment.topLeft,
                        child: Center(
                          child: Container(
                            width: 300,
                            child: Card(
                                color: Colors.white,
                                elevation: 8,
                                margin: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 10.0),
                                child: ListTile(
                                  title: Text(
                                    "Height",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: "Helvetica"),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: TextFormField(
                                      controller: heightController,
                                      keyboardType: TextInputType.number,
                                      onFieldSubmitted: (_) =>
                                          refreshFunctions(),
                                      // callFunc(int.parse(weightController.text)),
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        hintText: 'Enter height in CM',
                                      ),
                                    ),
                                  ),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/images/height.jpg",
                                    ),
                                    radius: 30,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87),
                          color: Colors.black87,
                        ),
                        alignment: Alignment.topLeft,
                        child: Center(
                          child: Container(
                            width: 300,
                            child: Card(
                                color: Colors.white,
                                elevation: 8,
                                margin: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 10.0),
                                child: ListTile(
                                  title: Text(
                                    "Weight",
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: "Helvetica"),
                                  ),
                                  subtitle: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: TextFormField(
                                      controller: weightController,
                                      keyboardType: TextInputType.number,
                                      onFieldSubmitted: (_) =>
                                          refreshFunctions(),
                                      // callFunc(int.parse(weightController.text)),
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        hintText: 'Enter weight in KG',
                                      ),
                                    ),
                                  ),
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "assets/images/weight.png",
                                    ),
                                    radius: 30,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87),
                      color: Colors.black87,
                    ),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text(
                                "BMI",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 20),
                              ),
                            ),
                            Container(
                                child: Text(
                              "IDEAL WEIGT",
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            )),
                            Container(
                                child: Text(
                              "FAT",
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text(
                                _bmiCalculate(),
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ),
                            ),
                            Container(
                                child: Text(
                              _idealWeight(),
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            )),
                            Container(
                                child: Text(
                              _bodyFat(),
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                        padding: EdgeInsets.all(50),
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.black87,
                        ),
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Center(
                              child: Text(
                                "Your IDEAL WEIGHT should be: " +
                                    _idealWeight() +
                                    " KG\nYour current WEIGHT is: " +
                                    weightController.text,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: "Verdana",
                                    fontSize: 17),
                              ),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
