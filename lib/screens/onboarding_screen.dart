import 'package:business_mates/screens/authentication/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:smartkit/SmartkitScreen/Screen/SmartKitHome.dart';
// import 'GrobagSignupMain.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  double height = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final slideList = [
    Slide(
      imageUrl:
          'https://images.unsplash.com/photo-1524758870432-af57e54afa26?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      title: "New Courses",
      description: "Enhance your knoweldge with our new courses",
    ),
    Slide(
      title: "One time payment, Life time access",
      imageUrl:
          'https://images.unsplash.com/photo-1486413869840-a99ac0a4c031?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1030&q=80',
      description: "No need to pay again and again for the same course",
    ),
    Slide(
      title: 'Not just courses, but also projects',
      imageUrl:
          'https://images.unsplash.com/photo-1560626833-1ef263dc356c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      description: "Learn by doing, not just by reading",
    ),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  Widget _slider() {
    return Expanded(
      child: PageView.builder(
        itemCount: slideList.length,
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Expanded(
                child: Image.network(
                  slideList[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height <= 640.0 ? 20.0 : 45.0),
                child: Text(slideList[currentIndex].title,
                    style: Theme.of(context).textTheme.headline5),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.only(
                      top: height <= 640.0 ? 10.0 : 20.0,
                      left: 10.0,
                      right: 10.0),
                  child: Text(slideList[currentIndex].description,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle1),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 6,
        width: isActive ? 25 : 7,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onSecondary,
        ));
  }

  _btn() {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: EdgeInsets.only(
          bottom: height <= 640.0 ? 20.0 : 50.0, left: 30.0, right: 30.0),
      child: CupertinoButton(
        color: Theme.of(context).colorScheme.primary,
        onPressed: () {
          if (currentIndex == 0) {
            setState(() {
              _pageController.jumpToPage(1);
            });
          } else if (currentIndex == 1) {
            setState(() {
              _pageController.jumpToPage(2);
            });
          } else if (currentIndex == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const LoginScreen(),
              ),
            );
          }
        },
        child: SizedBox(
          child: Text("Next",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        body: SizedBox(
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _slider(),
              Container(
                margin: EdgeInsets.only(
                    bottom: height <= 640.0 ? 20.0 : 30,
                    top: height <= 640.0 ? 20.0 : 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIndicator(),
                ),
              ),
              _btn(),
            ],
          ),
        ),
      ),
    );
  }
}

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}
