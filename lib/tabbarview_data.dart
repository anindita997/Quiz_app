import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarData extends StatefulWidget {
  @override
  _TabbarDataState createState() => _TabbarDataState();
}

class _TabbarDataState extends State<TabbarData> {
  List friend=[
    {
      "image":"assets/pp.jpg",
      "name":"Ani",
      "detail":"325 followers"
    },
    {
      "image":"assets/pp.jpg",
      "name":"Somu",
      "detail":"325 followers"
    },
    {
      "image":"assets/pp.jpg",
      "name":"Khaled",
      "detail":"325 followers"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.all(16.0),
     child: Column(
       mainAxisSize:MainAxisSize.min,
       children: [
        SizedBox(height: 20.0,),
         ListView.builder(
           shrinkWrap: true,
             itemCount: friend.length,
             itemBuilder: (BuildContext context,int index){
               return Container(
                 height: 60,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(12.0),
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Image.asset(friend[index]["image"])
                     ),
                     SizedBox(
                       width: 20.0,
                     ),
                     Flexible(
                         fit: FlexFit.loose,
                       child: ListTile(
                         title: Text(friend[index]["name"],
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: 18,
                               fontWeight: FontWeight.bold
                             )),
                         subtitle: Text(friend[index]["detail"],
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: 14,
                             )),
                       )
                     ),
                   ],
                 ),
               );

         }),
       ],
     ),
      );
  }
}
