import '../../core/design/app_icons.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function? onTap;
  final PageController? pageController;
  final int? initialIndex;

  const CustomBottomNavigationBar(
      {Key? key, this.onTap, this.pageController, this.initialIndex})
      : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int? _currentIndex;

  @override
  void initState() {
    super.initState();

    _currentIndex = widget.initialIndex;

    widget.pageController!.addListener(
      () {
        int page = widget.pageController!.page!.toInt();
        if (_currentIndex != page) {
          setState(() {
            _currentIndex = page;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 88,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 17,
          blurStyle: BlurStyle.outer,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ], color: Colors.black),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 6,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          if (widget.onTap != null) {
            widget.onTap!(index);
          }
        },
        currentIndex: _currentIndex!,
        unselectedLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
        unselectedItemColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).primaryColor,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        selectedIconTheme: const IconThemeData(size: 30),
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(BMIcon.home),
              tooltip: "Home",
              icon: Icon(BMIcon.bookmark),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Icon(BMIcon.bookmark_filled),
              tooltip: "My Courses",
              icon: Icon(BMIcon.bookmark),
              label: 'My Courses'),
          BottomNavigationBarItem(
            activeIcon: Icon(BMIcon.user_filled),
            tooltip: "Profile",
            icon: Icon(BMIcon.user),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
