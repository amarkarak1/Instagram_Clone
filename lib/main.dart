import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> image = [
    'images/fontdoor.png',
    'images/men.png',
    'images/palace.png',
    'images/pool.png',
    'images/road.png',
    'images/swim.png',
    'images/temple.png',

  ];

  Color _favIconColor = Colors.white;
  Color _favIconColor1 = Colors.white;

  Container profilePicture(BuildContext context, String image, String name) {
    double radius = 45.0;
    double newImageBorder = 2.5;
    double imagePadding = 2.5;

    return Container(
      height: (radius + newImageBorder + imagePadding) * 2,
      width: (radius + newImageBorder + imagePadding) * 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            InkWell(
              splashColor: Colors.orange[100],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(imagePadding),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: newImageBorder,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: radius - 8,
                  backgroundImage: AssetImage(image),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                name,
                style: TextStyle(fontSize: 15.0),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Container post(BuildContext context, String image, String name) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                    backgroundImage: AssetImage(image),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text("Delhi"),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(FontAwesome.ellipsis_v), onPressed: () {  },
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              image:  DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 30.0,
                  ),
                  color: _favIconColor,
                  tooltip: 'add to favourite',
                  onPressed: () {
                    setState(() {
                      if (_favIconColor == Colors.white) {
                        _favIconColor = Colors.red;
                      } else {
                        _favIconColor = Colors.white;
                      }
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    EvilIcons.comment,
                    size: 30,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Feather.send,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Feather.bookmark,
                    size: 30,
                  ),
                  onPressed: () {
                    setState(() {
                      if (_favIconColor1 == Colors.white) {
                        _favIconColor1 = Colors.black;
                      } else {
                        _favIconColor1 = Colors.white;
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            )),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[

          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.send,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              profilePicture(context, image[0], "Debojyoti Sinha"),
                              profilePicture(context, image[1], "Amar"),
                              profilePicture(context, image[2], "kundan"),
                              profilePicture(context, image[3], "siraj"),
                              profilePicture(context, image[4], "saurbh"),
                              profilePicture(context, image[5], "atul"),
                              profilePicture(context, image[0], "monu"),
                              profilePicture(context, image[1], "Atul"),
                              profilePicture(context, image[2], "booby"),
                              profilePicture(context, image[3], "tejju"),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: new Center(
                            child: new Container(
                              margin: EdgeInsets.only(bottom: 8),
                              height: 1.0,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    post(context, image[0], "kundan"),
                    post(context, image[1], "Atul"),
                    post(context, image[2], "booby"),
                    post(context, image[3], "Saurabh"),
                    post(context, image[4], "Amar"),
                    post(context, image[5], "debojyoti"),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Feather.home,color: Colors.black, size: 35, ),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  IconButton(
                    icon: Icon(Feather.search, color: Colors.black, size: 35,),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  IconButton(
                    icon: Icon(Feather.plus_square, color: Colors.black, size: 30,),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  IconButton(
                    icon: Icon(Feather.heart, color: Colors.black, size: 30,),
                    onPressed: (){},
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('images/temple.png'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  int imageid = 0;
  List<String> image = [
    'images/fontdoor.png',
    'images/men.png',
    'images/palace.png',
    'images/pool.png',
    'images/road.png',
    'images/swim.png',
    'images/temple.png',
  ];

  void moveBackward(BuildContext context) {
    if (imageid - 1 < 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    } else {
      imageid--;
    }
  }

  void moveForward(BuildContext context) {
    if (imageid + 1 == image.length) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    } else {
      imageid++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image[imageid]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Divider(
                                  thickness: 2,
                                 color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage('images/fontdoor.png'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Text('Amar karak',
                                  style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  fontSize: 10),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Container(
                                child: Text('3h',
                                  style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                child: FlatButton(
                                  onPressed: () {
                                    setState(() {
                                      moveBackward(context);
                                    });
                                  },
                                  child: null,
                                )),
                          ),
                          Expanded(
                            child: Container(
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    moveForward(context);
                                  });
                                },
                                child: null,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: IconButton(
                                  icon: Icon(FontAwesome.camera, color: Colors.white,),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                child:Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            (Radius.circular(15.0)),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                        ),
                                        hintText: 'Send Message',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: IconButton(
                                  icon: Icon(Feather.send, color: Colors.white,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),),
      ),
    );
  }
}