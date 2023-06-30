// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/constants.dart';
import 'package:web_portfolio/constants/text_styles.dart';
import 'package:web_portfolio/helper%20class/helper_class.dart';
import 'package:web_portfolio/widgets/buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Uri _url = Uri.parse('https://flutter.dev');
  final socialButtons = <String>[
    "assets/images/in.png",
    "assets/images/git.png",
  ];

  var socialBI;

  void openGitHub() async {
    const url = 'https://github.com/jacky1525';
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'GitHub sayfası açılamadı: $url';
    }
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  void openLinkedIn() async {
    const url = 'https://https://www.linkedin.com/in/hasan-fidan-429197251/';
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'LinkedIn sayfası açılamadı: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildInformation(size),
          Constants.sizedBox(height: 25.0),
          buildProfilePicture()
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildInformation(size)),
          buildProfilePicture(),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildInformation(size)),
          buildProfilePicture(),
        ],
      ),
      paddingWidth: size.width * 0.05,
      bgColor: Colors.transparent,
    );
  }

  FadeInUp buildProfilePicture() {
    return FadeInUp(
      duration: const Duration(milliseconds: 1400),
      child: Image.asset(
        "assets/images/profile.png",
        width: 340,
        height: 450,
      ),
    );
  }

  Column buildInformation(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            "Hello It's Me",
            style: WebSiteTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            "Hasan Fidan",
            style: WebSiteTextStyles.headingStyles(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Row(
            children: [
              Text(
                "And I'm a ",
                style: WebSiteTextStyles.montserratStyle(color: Colors.white),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText("Flutter Developer",
                      textStyle: WebSiteTextStyles.montserratStyle(
                          color: Colors.lightBlue)),
                  TyperAnimatedText("Kotlin Developer",
                      textStyle: WebSiteTextStyles.montserratStyle(
                          color: Colors.lightBlue)),
                ],
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: false,
              )
            ],
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: SizedBox(
            width: size.width * 0.5,
            child: Text(
              "I am a final year student at Bolu Abant Izzet Baysal University, studying Computer Engineering. I am continuing to improve myself in mobile programming.",
              style: WebSiteTextStyles.normalStyle(),
            ),
          ),
        ),
        Constants.sizedBox(height: 22),
        FadeInUp(
          duration: const Duration(milliseconds: 1600),
          child: SizedBox(
            height: 48,
            child: ListView.separated(
              itemCount: socialButtons.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return Constants.sizedBox(width: 8);
              },
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      if (value) {
                        socialBI = index;
                      } else {
                        socialBI = null;
                      }
                    });
                  },
                  borderRadius: BorderRadius.circular(550.0),
                  hoverColor: WebSiteColors.themeColor,
                  splashColor: WebSiteColors.lawGreen,
                  child: Tooltip(
                    message: socialButtons[index] == "assets/images/in.png"
                        ? "LinkedIn"
                        : "GitHub",
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: GestureDetector(
                      onTap: _launchUrl,
                      child: socialButton(
                          asset: socialButtons[index],
                          hover: socialBI == index ? true : false),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Constants.sizedBox(height: 18),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: Buttons.cvButton(
            buttonName: "Download CV",
            onTap: () {},
          ),
        )
      ],
    );
  }

  Ink socialButton({required String asset, required bool hover}) {
    return Ink(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: WebSiteColors.appBarColor, shape: BoxShape.circle),
        padding: const EdgeInsets.all(6),
        child: Image.asset(asset,
            width: 10,
            height: 12,
            color:
                hover ? WebSiteColors.appBarColor : WebSiteColors.themeColor));
  }
}
