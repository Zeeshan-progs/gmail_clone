import 'package:flutter/material.dart';

class JoinPage extends StatefulWidget {
  @override
  _JoinPageState createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Join With Code',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                show
                    ? Text(
                        'Join',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    : Text(
                        'Join',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Enter Code to join',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),

            // you can modify text field as you want to decorate
            // there is so many options
            TextFormField(
              // lets decorate some

              decoration: InputDecoration(
                fillColor: Colors.deepPurple[800],
                filled: true,
                enabledBorder: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
              // method to check if there is any text entered of not

              onChanged: (str) {
                setState(() {
                  if (str.length > 0) {
                    show = true;
                  } else {
                    show = false;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
