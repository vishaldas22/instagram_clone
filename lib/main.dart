import 'package:flutter/material.dart';
import 'package:flutter_ap/ui/add.dart';
import 'package:flutter_ap/ui/favourite.dart';
import 'package:flutter_ap/ui/home.dart';
import 'package:flutter_ap/ui/profile.dart';
import 'package:flutter_ap/ui/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.transparent
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum Answers { YES, NO, MAYBE }

class _HomePageState extends State<HomePage> {
  int current_index = 0;


  PageController controller = PageController();

  onPageChanged(int value) {
    setState(() {
      current_index = value;
    });
  }

  Widget buildTabs() {
    return PageView(
      onPageChanged: onPageChanged,
      controller: controller,
      children: <Widget>[Home(), Search(), Add(), Favourite(), Profile()],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: current_index == 0 ? Colors.black : Colors.grey,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: current_index == 1 ? Colors.black : Colors.grey,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
                color: current_index == 2 ? Colors.black : Colors.grey,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: current_index == 3 ? Colors.black : Colors.grey,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: current_index == 4 ? Colors.black : Colors.grey,
              ),
              title: Text("")),
        ],
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        currentIndex: current_index,
        onTap: (current_index) => controller.jumpToPage(current_index),
      ),
      body: buildTabs(),
    );
  }


}
