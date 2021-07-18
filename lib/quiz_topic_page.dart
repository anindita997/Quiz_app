import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_level.dart';
import 'package:quiz_app/quiz_model.dart';

class QuizTopic extends StatefulWidget {
  @override
  _QuizTopicState createState() => _QuizTopicState();
}

class _QuizTopicState extends State<QuizTopic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select quiz topic",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        toolbarHeight: 70,
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
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
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Level()));
                  },
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
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
                            data[index]["icon"],
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: VerticalDivider(
                            color: Colors.black,
                            width: 5.0,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Flexible(
                          child: ListTile(
                            title: Text(data[index]["title"],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                )),
                            subtitle: Text(data[index]["description"],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
