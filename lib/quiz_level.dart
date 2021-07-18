import 'package:flutter/material.dart';

class Level extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
  List level = [
    {"level": "Easy"},
    {"level": "Medium"},
    {"level": "Hard"},
  ];
  var isselect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz level",
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
        centerTitle: true,
        toolbarHeight: 60,
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
            icon: Icon(Icons.dehaze, color: Colors.white),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Difficulty Level",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10.0,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: level.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isselect = index;
                          });
                        },
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color:
                                isselect == index ? Colors.blue : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 5, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              level[index]["level"],
                              style: TextStyle(
                                  color: isselect == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              // textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
