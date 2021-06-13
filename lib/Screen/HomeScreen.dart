import 'package:gmail_clone/Screen/DetailScreen.dart';
import 'package:gmail_clone/Screen/Tabs/MailTab.dart';
import 'package:gmail_clone/Screen/Tabs/MeetTab.dart';
import 'package:gmail_clone/Utilities/list_info.dart';
import 'package:flutter/material.dart';

// hello guys welcome back to my channel
// today we are creating gmail_clone

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          elevation: 0,
          title: Container(
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Search Email'),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/logo.png',
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [Text('Welcome')],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [MailTab(), MeetTab()],
        ),
        bottomNavigationBar: Container(
          height: 50,
          child: TabBar(
              indicatorColor: Colors.deepPurple,
              unselectedLabelColor: Colors.grey,
              controller: _controller,
              labelColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Icon(
                  Icons.mail,
                ),
                Icon(
                  Icons.video_call,
                ),
              ]),
        ),
      ),
    );
  }
}
