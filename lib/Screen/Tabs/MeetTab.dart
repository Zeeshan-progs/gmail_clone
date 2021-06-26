import 'package:flutter/material.dart';

import '../joinPage.dart';

class MeetTab extends StatefulWidget {
  @override
  _MeetTabState createState() => _MeetTabState();
}

class _MeetTabState extends State<MeetTab> {
  int page = 0;

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    // hey guys welcome to gmail clone episode two
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Meet',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/photo-1.jpg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height / 1.3,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showSheet(context);
                    },
                    child: Text(
                      'Create New Meeting',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          BorderSide(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                      onPressed: () {
                        // now lets add new page for meeting join
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => JoinPage()),
                        );
                      },
                      child: Text(
                        'join meeting with code',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
              SizedBox(height: 20),
              // page silde content
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
                    buildSliderContent(width, height, 'images/photo-1.jpg'),
                    buildSliderContent(width, height, 'images/meet1.jpg'),
                  ],
                ),
              ),

              // page indicator

              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    2,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color:
                            index == (page) ? Colors.deepPurple : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildSliderContent(double width, double height, String image) {
    return Container(
      width: width,
      child: Column(
        children: [
          Image.asset(
            image,
            height: height / 2,
            width: width,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Text(
              'Your Dummy Title Text That You want to show in your app ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Text(
              'Your Dummy description Text That You want to show in your app ',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

// show bottom model of options
  showSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      context: context,
      builder: (_) => Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomContent(
                icon: Icons.link, text: 'Create link to instent join'),
            bottomContent(icon: Icons.videocam, text: 'Start Instent Meeting'),
            bottomContent(
                icon: Icons.calendar_today, text: 'Scheduled meeting '),

            // to add some function just wrap with widget
            GestureDetector(
                onTap: () {
                  Navigator.pop(context); // to close bottom sheet
                },
                child: bottomContent(icon: Icons.close, text: 'Close')),
          ],
        ),
      ),
    );
  }

  Container bottomContent({IconData icon, String text}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
            size: 28,
          ),
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
