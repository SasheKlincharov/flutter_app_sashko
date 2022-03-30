import 'package:flutter/material.dart';

class StretchingItemView extends StatelessWidget {

  StretchingItemView();

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