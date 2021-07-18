import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/homepage.dart';
import 'package:quiz_app/login.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 90.0,
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width / 1.8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.purple, width: 1.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300].withOpacity(0.5), //color of shadow
                      spreadRadius: 80, //spread radius
                      blurRadius: 5, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                    ),

                  ],
                ),
                child: Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/startscreen.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              SizedBox(height: 200.0,),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue,width: 1.5),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: RaisedButton(
                  onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Login()));
                  },
                  color: Colors.white,
                  child: Text(
                    "Start Now",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
