import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/discoverpage.dart';
import 'package:quiz_app/home_data.dart';
import 'package:quiz_app/quiz_categorypage.dart';
import 'package:quiz_app/quiz_topic_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.dehaze,
              color: Colors.white,
            ),
          ),
        ],
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 5, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        "Welcome Back Quiz Game",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Here's how many question you and your friends answered this week",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            letterSpacing: 0.8),
                        textAlign: TextAlign.center,
                      ),
                      Flexible(child: Data()),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 1.5),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => QuizTopic()));
                          },
                          color: Colors.white,
                          child: Text(
                            "Start Your New Quiz",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
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
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Discover()));
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 2, //spread radius
                        blurRadius: 5, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "New quiz category available!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 5, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.settings,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      width: 5.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      child: ListTile(
                        title: Text("History",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        subtitle: Text("Fast and Furious",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 5, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "10 Questions left until reward",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 2, //spread radius
                      blurRadius: 5, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.settings,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      width: 5.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => QuizCategory()));
                        },
                        child: ListTile(
                          title: Text("More",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                          trailing: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue[700],
                                  border: Border.all(
                                      color: Colors.white, width: 2.0)),
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: 14,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
