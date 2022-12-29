import 'homepage/profile_screen.dart';
import '../widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart' hide BottomNavigationBar;

import 'homepage/home_screen.dart';

class RootDashboard extends StatefulWidget {
  // page
  static Page page() => MaterialPage<void>(
          child: RootDashboard(
        currentIndex: 0,
      ));

  static const String routeName = '/Rootdashboard';
  int currentIndex = 0;

  RootDashboard({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<RootDashboard> createState() => _RootDashboardState();
}

class _RootDashboardState extends State<RootDashboard> {
  late PageController _pageController;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final int _homePageIndex = 2;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(keepPage: true, initialPage: widget.currentIndex);
    // _homePageIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        key: _scaffoldKey,
        // appBar: _appBars[1],
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          pageSnapping: true,
          controller: _pageController,
          children: [HomePage(), const ProfileScreen()],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          initialIndex: widget.currentIndex,
          pageController: _pageController,
          onTap: (int index) {
            widget.currentIndex = index;
            _pageController.jumpToPage(widget.currentIndex);
          },
        ),

        // drawer: MainSideDrawer(() {
        //   _scaffoldKey.currentState!.openEndDrawer();
        // }
        // )
      ),
      onWillPop: () async {
        bool isHomePage = _pageController.page == _homePageIndex;
        if (!isHomePage) {
          _pageController.jumpToPage(_homePageIndex);
        }
        return isHomePage;
      },
    );
  }
}
