import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_level.dart';
import 'package:quiz_app/quiz_model.dart';

class QuizCategory extends StatefulWidget {
  @override
  _QuizCategoryState createState() => _QuizCategoryState();
}

class _QuizCategoryState extends State<QuizCategory> {
  var isselect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0)),
                color: Colors.blue[700],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Quiz Categories",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          decoration: TextDecoration.none),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.dehaze, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 120,
              right: 8,
              left: 8,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Align all The Categories",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Choose a box to start a quiz and explore yourself",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          "Choose Category",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                             ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemCount: grid.length,
                          itemBuilder: (BuildContext context, index) {
                            return InkWell(
                              onTap: (){
                                setState(() {
                                  isselect = index;
                                });
                              },
                              child: Card(
                                color: isselect==index?Colors.blue:Colors.white70,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Icon(grid[index]["icon"]),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      grid[index]["title"],
                                      style: TextStyle(
                                        color: isselect==index?Colors.white:Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Text(grid[index]["sub"]),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          child: RaisedButton(
                            onPressed: () {
                              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Level()));
                            },
                            color: Colors.blue[700],
                            child: Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
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
                        SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
