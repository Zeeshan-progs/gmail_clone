import 'package:flutter/material.dart';

import '../joinPage.dart';

// lets start building maat app ui in our way
class MeetTab extends StatefulWidget {
  const MeetTab({Key key}) : super(key: key);

  @override
  _MeetTabState createState() => _MeetTabState();
}

class _MeetTabState extends State<MeetTab> {
  PageController _controller;

  int page = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Meet',
          style: textStyle,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: () {
                    // lets open sheet on button

                    showSheet(context);
                  },
                  child: Text(
                    'Create Meeting',
                    style: textStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.deepPurple[900],
                ),
                OutlinedButton(
                  onPressed: () {
                    // lets create join page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => JoinPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Join now with code',
                    style: textStyle,
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: PageView(
                onPageChanged: (p) {
                  setState(() {
                    page = p;
                  });
                },
                controller: _controller,
                children: [
                  buildContainer(
                    height,
                    width,
                    image: 'images/photo-1.jpg',
                  ),
                  buildContainer(
                    height,
                    width,
                    image: 'images/meet1.jpg',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // lets add indicator

            Container(
              child: Row(
                // align in cente
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  2,
                  (index) => Container(
                    // which type of indicator you want you can add here

                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color changing indicator
                      color:
                          index == page ? Colors.deepPurple[900] : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(double height, double width,
      {@required String image}) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            image,
            height: height / 2,
            width: width,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Container(
            child: Text(
              'Dummy title text taht you want to show !',
              style: textStyle,
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Text(
              'Dummy title text taht you want to show !',
              style: greyText,
            ),
          ),
        ],
      ),
    );
  }

  // create single style for all ui

  TextStyle textStyle = TextStyle(
    fontSize: 18.0,
    color: Colors.black,
  );
  TextStyle greyText = TextStyle(
    fontSize: 15.0,
    color: Colors.grey,
  );
  // create bottom sheet  of options

  showSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      context: context,
      builder: (_) => Container(
        padding: EdgeInsets.all(15),
        height: 200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            container(
              icon: Icons.calendar_today,
              text: 'Schedule your meeting',
            ),
            container(
              icon: Icons.videocam,
              text: 'create instent meeing',
            ),
            container(
              icon: Icons.share,
              text: 'share link',
            ),
            container(
              icon: Icons.close,
              text: 'Close',
            ),
          ],
        ),
      ),
    );
  }

  Container container({IconData icon, String text}) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            size: 22,
            color: Colors.grey,
          ),
          SizedBox(width: 50),
          Text(
            text,
            style: greyText,
          ),
        ],
      ),
    );
  }
}
