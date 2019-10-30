import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';

class BottomNavigationBarController extends StatefulWidget {
  @override
  _BottomNavigationBarControllerState createState() =>
      _BottomNavigationBarControllerState();
}

class _BottomNavigationBarControllerState
    extends State<BottomNavigationBarController>
    with SingleTickerProviderStateMixin {
  AnimationController _animController;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
      reverseDuration: const Duration(milliseconds: 100),
    );

    _animation = CurveTween(curve: Curves.ease).animate(_animController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  final List<Widget> pages = [

    Container(),

  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => (new Theme(
      data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: PrimaryColor,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.black38))),
      child: new BottomNavigationBar(
        onTap: (int index) {
          if (index == 2) {
            _animController.forward();
          } else {
            _animController.reverse();
            setState(() => _selectedIndex = index);
          }
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Tiere')),
          BottomNavigationBarItem(
              icon: Icon(Icons.dns), title: Text('Tagebuch')),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Ratgeber')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Konto')),
        ],
      )));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: PrimaryColor,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageStorage(
            child: pages[_selectedIndex],
            bucket: bucket,
          ),
          // TreatmentPage(animation: _animation),
        ],
      ),
    );
  }
}
