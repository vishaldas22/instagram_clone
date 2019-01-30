import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return new HomeState();
  }
}

enum Answers { YES, NO, MAYBE }

class HomeState extends State<Home> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  static bool pressed = false;
  static bool onpressed = false;

  Future _askUser() async {
    switch (await showDialog(
        context: context,
        /*it shows a popup with few options which you can select, for option we
        created enums which we can use with switch statement, in this first switch
        will wait for the user to select the option which it can use with switch cases*/
        child: new SimpleDialog(
          title: new Text(
            'Report...',
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
          ),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text(
                'Turn on Post Notifications',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
              onPressed: () {
                Navigator.pop(context, Answers.YES);
              },
            ),
            new SimpleDialogOption(
              child: new Text(
                'Unfollow',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
              onPressed: () {
                Navigator.pop(context, Answers.NO);
              },
            ),
            new SimpleDialogOption(
              child: new Text(
                'Mute',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
              ),
              onPressed: () {
                Navigator.pop(context, Answers.MAYBE);
              },
            ),
          ],
        ))) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.black),
            onPressed: () {}),
        title: Text(
          "Instagram",
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.live_tv, color: Colors.black), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.send, color: Colors.black), onPressed: () {}),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 82.0,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, top: 2.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 58.0,
                          height: 58.0,
                          child: Stack(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                radius: 27.0,
                              ),
                              Positioned(
                                left: 40.0,
                                top: 40.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      color: Colors.blue,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1.5,
                                      )),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 14.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Your story",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  circles('nora',
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                ],
              ),
            ),
          ),
          posts(
              "https://images.pexels.com/photos/450271/pexels-photo-450271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              "animax")
        ],
      ),
    );
  }

  Widget posts(String imgUrl, String name) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 35.0,
                      width: 35.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.0, color: Colors.redAccent),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35.0),
                            border: Border.all(width: 1.5, color: Colors.white),
                            image: DecorationImage(
                                image: NetworkImage(imgUrl),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.black38,
                      size: 21.0,
                    ),
                    onPressed: () => _askUser())
              ],
            ),
          ),
          Container(
            height: 400.0,
            width: 400.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover)),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            pressed = true;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            pressed = false;
                          });
                        },
                        child: Icon(
                          pressed == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: pressed == true ? Colors.red : Colors.black,
                          size: 27.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.black,
                          size: 27.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: _bottomsheet,
                        child: Icon(
                          Icons.send,
                          color: Colors.black,
                          size: 27.0,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(
                      onpressed ? Icons.bookmark : Icons.bookmark_border,
                      color: Colors.black,
                      size: 27.0,
                    ),
                    onPressed: () {
                      setState(() {
                        onpressed = true;
                      });
                    })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "561 likes",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Happy times",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "View All 50 Comments",
                  style: TextStyle(color: Colors.grey, fontSize: 13.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 28.0,
                      width: 28.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          border: Border.all(width: 0.5, color: Colors.black),
                          image: DecorationImage(
                              image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      onTap: _showBottomSheet,
                      child: Text(
                        'Add a comment...',
                        style: TextStyle(color: Colors.grey, fontSize: 13.0),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "18 MINUTES AGO",
                  style: TextStyle(color: Colors.grey, fontSize: 9.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _bottomsheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                )
            ),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.0),
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Center(
                                  child: Icon(Icons.add,size: 25.0,),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 7.0)),
                              Text(
                                "Add to story",
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 13,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.0),
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Center(
                                  child: Icon(Icons.keyboard_return,size: 25.0,),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 7.0)),
                              Text(
                                "Reply",
                                style: TextStyle(fontSize: 11.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 13,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.0),
                                  border: Border.all(
                                      width: 0.5, color: Colors.black),
                                ),
                                child: Center(
                                  child: Icon(Icons.link,size: 25.0,),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 7.0)),
                              Text(
                                "Copy link",
                                style: TextStyle(fontSize: 11.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 13,
                          ),
                          Container(
                            height: 70.0,
                            width: 60.0,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35.0),
                                    border: Border.all(
                                        width: 0.5, color: Colors.black),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.share,size: 25.0,),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 7.0)),
                                Text(
                                  "Share to other app",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 11.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(),
                Container(
                  //height: 50.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: new Row(
                      children: <Widget>[
                        Container(
                          height: 38.0,
                          width: 38.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/450271/pexels-photo-450271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Write a message...',
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 13.0),
                              border: InputBorder.none,
                            ),
                            keyboardType: TextInputType.text,
                            //autofocus: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Container(
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        hintStyle:
                            TextStyle(color: Colors.black26, fontSize: 13.0),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 15.0),
                  child: Column(
                    children: <Widget>[
                      contacts("nora", "Active 4h ago", "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      contacts("nora", "Active 4h ago", "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      contacts("nora", "Active 4h ago", "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      contacts("nora", "Active 4h ago", "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      contacts("nora", "Active 4h ago", "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      contacts("nora", "Active 4h ago", "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      contacts("nora", "Active 4h ago", "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),

                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  Widget contacts(String name, String time, String imgUrl) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 33.0,
                  width: 33.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                          image: NetworkImage(imgUrl), fit: BoxFit.cover)),
                ),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      time,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 18.0, top: 5.0, bottom: 5.0),
                child: Text(
                  "Send",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            height: 50.0,
            color: Colors.white,
            child: new Row(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 10.0, bottom: 8.0),
                  child: Container(
                    height: 28.0,
                    width: 28.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(width: 0.5, color: Colors.black),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/450271/pexels-photo-450271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Add a comment',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.text,
                    //autofocus: true,
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget circles(String name, String imgUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 17.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 59.0,
              width: 59.0,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.redAccent),
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(width: 2.0, color: Colors.white),
                    image: DecorationImage(
                        image: NetworkImage(imgUrl), fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(name),
          ],
        ),
      ),
    );
  }
}
