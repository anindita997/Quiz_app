import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  List _height = [
    {"height": 70.0,"name":"Somu","score":"32"},
    {"height": 90.0,"name":"Khaled","score":"40"},
    {"height": 120.0,"name":"Ani","score":"49"},
    {"height": 80.0,"name":"Shakib","score":"43"},
    {"height": 70.0,"name":"Eti","score":"30"},

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _height.length,
          scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,  index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_height[index]["score"]),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 40.0,),
                      Container(
                        height: _height[index]["height"],
                        width:15,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(_height[index]["name"]),
              ),
            ],
          );
        },
      ),
    );
  }
}
