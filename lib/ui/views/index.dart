import 'package:flutter/material.dart';
import 'package:vaulty/ui/shared/responsive_widget.dart';
import 'package:vaulty/ui/views/home.dart';
import 'package:vaulty/ui/views/profile.dart';
import 'package:vaulty/ui/views/security.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentPage = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        appBar: AppBar(
            title: Text('Vaulty'),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  icon: Icon(Icons.nights_stay_rounded), onPressed: () {})
            ]),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int page) {
              setState(() {
                _currentPage = page;
              });
              _controller.jumpToPage(page);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home)),
              BottomNavigationBarItem(icon: Icon(Icons.verified_user)),
              BottomNavigationBarItem(icon: Icon(Icons.more_horiz)),
            ]),
        builder: (context, size) {
          return PageView(
            controller: _controller,
            children: [
              HomeScreen(),
              SecurityScreen(),
              ProfileScreen(),
            ],
          );
        });
  }
}
