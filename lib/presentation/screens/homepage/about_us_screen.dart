import 'package:business_mates/core/utils/constants.dart';
import 'package:business_mates/presentation/screens/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  static const String routeName = "/about_us";

  Future<void> _handleLaunchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size;
    final double height = size.height;
    final double width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("About us"),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoWidget(
                  height: height * 0.1,
                ),
                const Text("Business Mates", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "This is an e-learning application for people with autism to help them learn some skills that will help them to earn some money and make some little and impactful changes in the society and their lives. In Business Mates application we focus on empowerment. We strive for acceptance and hold events that put our autistic community front and centre on stage to advocate for themselves and their peers; we help to develop self-esteem and confidence while educating the wider community. We are visible, we are inclusive and we invite you to join us in our vision.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          // Contacts
          const Text(
            "Contact us",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // address
              SizedBox(
                width: width * 0.5,
                child: Column(
                  children: const [
                    Text(
                      "Address",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Business Mates",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "PO Box 177 Kingsford, NSW, 2032, Australia",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              // phone
              // SizedBox(
              //   width: width * 0.5,
              //   child: Column(
              //     children: const [
              //       Text(
              //         "Phone",
              //         style: TextStyle(
              //           fontSize: 15,
              //         ),
              //       ),
              //       Text("+20123456789"),
              //     ],
              //   ),
              // ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Social medias

              SizedBox(
                child: Column(
                  children: [
                    const Text("Follow us on social media"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Image.asset(Constants.websiteIcon),
                          onPressed: () {
                            _handleLaunchUrl(Constants.websiteUrl);
                          },
                          color: Colors.blue,
                        ),
                        IconButton(
                          icon: SvgPicture.asset(Constants.facebookIcon),
                          onPressed: () {
                            _handleLaunchUrl(Constants.facebookUrl);
                          },
                        ),
                        IconButton(
                          icon: SvgPicture.asset(Constants.instagramIcon),
                          onPressed: () {
                            _handleLaunchUrl(Constants.instagramUrl);
                          },
                        ),
                        IconButton(
                          icon: SvgPicture.asset(Constants.linkedinIcon),
                          onPressed: () {
                            _handleLaunchUrl(Constants.linkedinUrl);
                          },
                        ),
                        IconButton(
                          icon: SvgPicture.asset(Constants.tiktokIcon),
                          onPressed: () {
                            _handleLaunchUrl(Constants.tiktokUrl);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
