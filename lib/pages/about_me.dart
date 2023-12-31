import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/constants.dart';
import 'package:web_portfolio/constants/text_styles.dart';
import 'package:web_portfolio/helper%20class/helper_class.dart';
import 'package:web_portfolio/widgets/buttons.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildAboutMe(),
          Constants.sizedBox(height: 35.0),
          buildProfilePicture(),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMe())
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMe())
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: WebSiteColors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        "assets/images/profile.png",
        height: 450,
        width: 400,
      ),
    );
  }

  Column buildAboutMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: "About ",
              style: WebSiteTextStyles.headingStyles(fontSize: 30),
              children: [
                TextSpan(
                  text: "Me",
                  style: WebSiteTextStyles.headingStyles(
                      fontSize: 30, color: WebSiteColors.robinEdgeBlue),
                )
              ],
            ),
          ),
        ),
        Constants.sizedBox(height: 6),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            "Flutter Developer!",
            style: WebSiteTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 8),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            "Hello, my name is Hasan Fidan. I am a 4th-year student at Bolu Abant Izzet Baysal University, studying Computer Engineering. I have been developing myself in Flutter for the past year and have already created various applications for Android using Flutter and Kotlin. Additionally, I have been learning Kotlin for the past three months as I continue to enhance my skills in mobile programming. I also believe that knowing a backend language is important, which is why I plan to learn Node.js.",
            style: WebSiteTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 15),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: Buttons.cvButton(
            buttonName: "Read More",
            onTap: () {},
          ),
        )
      ],
    );
  }
}
