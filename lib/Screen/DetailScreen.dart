import 'package:flutter/material.dart';
import 'package:gmail_clone/Utilities/list_info.dart';

class DetailPage extends StatefulWidget {
  Info detail;

  DetailPage({this.detail, key: Key});
  @override
  _DetailPageState createState() => _DetailPageState(this.detail);
}

class _DetailPageState extends State<DetailPage> {
  Info _detail;
  _DetailPageState(this._detail);
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.archive),
                SizedBox(width: 10),
                Icon(Icons.delete),
                SizedBox(width: 10),
                Icon(Icons.mail),
                SizedBox(width: 10),
                Icon(Icons.more_vert),
              ],
            ),
          )
        ],
      ),
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 0.8,
                      child: Text(
                        _detail.title.toString(),
                        style: TextStyle(fontSize: 18),
                        maxLines: 2,
                      ),
                    ),
                    IconButton(
                      icon: Icon(_detail.isStared
                          ? Icons.favorite
                          : Icons.favorite_border),
                      onPressed: () {
                        setState(() {
                          _detail.isStared = !_detail.isStared;
                        });
                      },
                    )
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Container(
                      child: _detail.logo.isEmpty
                          ? Text(
                              _detail.userName.substring(0, 1),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    _detail.logo,
                                  ),
                                ),
                                shape: BoxShape.circle,
                              ),
                            )),
                ),
                title: Container(
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _detail.userName + ' ' + _detail.time,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text('to Me'),
                                ),
                                IconButton(
                                  icon: Icon(isShow
                                      ? Icons.arrow_drop_up
                                      : Icons.arrow_drop_down),
                                  onPressed: () {
                                    setState(() {
                                      isShow = !isShow;
                                    });
                                  },
                                )
                              ],
                            ),
                            Visibility(
                              visible: isShow,
                              child: Container(
                                width: width / 2,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(width: .5)),
                                child: Column(
                                  children: [
                                    Text('from      :   ${_detail.mailId}'),
                                    Text('no_reply  :   ${_detail.mailId}'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.subdirectory_arrow_left_sharp),
                      ],
                    )),
                trailing: Icon(Icons.more_vert),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  _detail.description,
                  style: TextStyle(fontSize: 17),
                  textAlign: TextAlign.justify,
                ),
              ),
              Divider(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.subdirectory_arrow_left_sharp),
                        Text('Reply')
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.subdirectory_arrow_left_sharp),
                        Text('Reply All')
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.forward_to_inbox),
                        Text('Forward'),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
