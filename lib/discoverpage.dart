import 'package:flutter/material.dart';
import 'package:quiz_app/tabbarview_data.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Column(mainAxisSize: MainAxisSize.min, children: [
          Flexible(
            child: ListTile(
              title: Text(
                "Discover",
                style: TextStyle(color: Colors.white, fontSize: 25),
                // textAlign: TextAlign.center,
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                alignment: Alignment.topLeft,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          TextFormField(
            decoration: InputDecoration(
                fillColor: Colors.blue[500],
                filled: true,
                hintText: "Go",
                prefixIcon: Icon(
                  Icons.search,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: OutlineInputBorder()),
          ),
        ]),
        toolbarHeight: 200,
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.blue,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: ("Top"),
                ),
                Tab(
                  text: ("Quiz"),
                ),
                Tab(
                  text: ("Categories"),
                ),
                Tab(
                  text: ("Friends"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
