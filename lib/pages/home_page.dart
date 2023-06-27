import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/constants.dart';
import 'package:web_portfolio/constants/text_styles.dart';
import 'package:web_portfolio/pages/about_me.dart';
import 'package:web_portfolio/widgets/buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: WebSiteColors.appBarColor,
      appBar: AppBar(
        toolbarHeight: 90,
        titleSpacing: 100,
        backgroundColor: WebSiteColors.appBarColor,
        elevation: 0,
        title: Row(children: [
          const Text("Portfolio"),
          const Spacer(),
          Text(
            "Home",
            style: WebSiteTextStyles.headerTextStyle(),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            "About",
            style: WebSiteTextStyles.headerTextStyle(),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            "Services",
            style: WebSiteTextStyles.headerTextStyle(),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            "Portfolio",
            style: WebSiteTextStyles.headerTextStyle(),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            "Contact",
            style: WebSiteTextStyles.headerTextStyle(),
          ),
          const SizedBox(
            width: 30,
          ),
        ]),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: size.height * 0.05,
          left: size.width * 0.1,
          right: size.width * 0.1
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 1200),
                        child: Text(
                          "Hello It\'s Me",
                          style: WebSiteTextStyles.montserratStyle(
                              color: Colors.white),
                        ),
                      ),
                      Constants.sizedBox(height: 15),
                      FadeInRight(
                        duration: const Duration(milliseconds: 1400),
                        child: Text(
                          "Hasan Fidan",
                          style: WebSiteTextStyles.headingStyles(
                              color: Colors.white),
                        ),
                      ),
                      Constants.sizedBox(height: 15),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 1400),
                        child: Row(
                          children: [
                            Text(
                              "And I\'m a ",
                              style: WebSiteTextStyles.montserratStyle(
                                  color: Colors.white),
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText("Flutter Developer",
                                    textStyle:
                                        WebSiteTextStyles.montserratStyle(
                                            color: Colors.lightBlue)),
                                TyperAnimatedText("Kotlin Developer",
                                    textStyle:
                                        WebSiteTextStyles.montserratStyle(
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
                        child: Row(
                          children: [
                            socialButton(asset: "assets/images/in.png"),
                            Constants.sizedBox(width: 12),
                            socialButton(asset: "assets/images/git.png"),
                          ],
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
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1400),
                    child: Image.asset(
                      "assets/images/profile.png",
                      width: 360,
                      height: 390,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 220,
              ),
              AboutMe()
            ]),
      ),
    );
  }

  Ink socialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          border: Border.all(color: WebSiteColors.themeColor, width: 2.0),
          color: WebSiteColors.appBarColor,
          shape: BoxShape.circle),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        radius: 50,
        borderRadius: BorderRadius.circular(500),
        hoverColor: WebSiteColors.aqua,
        splashColor: WebSiteColors.lawGreen,
        onTap: () {},
        child: Image.asset(
          asset,
          width: 10,
          height: 12,
          color: WebSiteColors.themeColor,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
