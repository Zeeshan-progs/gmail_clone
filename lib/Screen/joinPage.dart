import 'package:flutter/material.dart';

class JoinPage extends StatefulWidget {
  const JoinPage({Key key}) : super(key: key);

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
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // to enable and disable effect of buttons
                show == false
                    ? Text(
                        'join',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.grey,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          print('tapped');
                        },
                        child: Text(
                          'join',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            Text(
              'Instent Join with code',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            // now the tricky part of meet you need heighlight join
            // method when there is any keyword is typped in text field
            TextFormField(
              // on page change method handle enable disable button
              onChanged: (value) {
                if (value.length > 0) {
                  setState(() {
                    show = true;
                  });
                } else {
                  setState(() {
                    show = false;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
