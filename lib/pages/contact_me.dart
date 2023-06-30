import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/constants.dart';
import 'package:web_portfolio/constants/text_styles.dart';
import 'package:web_portfolio/helper%20class/helper_class.dart';
import 'package:web_portfolio/widgets/buttons.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactMe(),
          Constants.sizedBox(height: 40.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: WebSiteColors.white,
              style: WebSiteTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Full Name'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: WebSiteColors.white,
              style: WebSiteTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Email Address'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: WebSiteColors.white,
              style: WebSiteTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Mobile Number'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: WebSiteColors.white,
              style: WebSiteTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Email Subject'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              maxLines: 15,
              cursorColor: WebSiteColors.white,
              style: WebSiteTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Your Message'),
            ),
          ),
          Constants.sizedBox(height: 40.0),
          Buttons.cvButton(buttonName: 'Send Message', onTap: () {}),
          Constants.sizedBox(height: 30.0),
        ],
      ),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: size.width * 0.2,
      bgColor: WebSiteColors.appBarColor,
    );
  }

  Column buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildContactMe(),
        Constants.sizedBox(height: 40),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: WebSiteColors.white,
                  style: WebSiteTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Full Name"),
                ),
              ),
            ),
            Constants.sizedBox(width: 20),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: WebSiteColors.white,
                  style: WebSiteTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Email Adress"),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: WebSiteColors.white,
                  style: WebSiteTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Mobile Number"),
                ),
              ),
            ),
            Constants.sizedBox(width: 20),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: WebSiteColors.white,
                  style: WebSiteTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: "Email Subject"),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20),
        Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          elevation: 8,
          child: TextField(
            cursorColor: WebSiteColors.white,
            style: WebSiteTextStyles.normalStyle(),
            maxLines: 10,
            decoration: buildInputDecoration(hintText: "Your Message"),
          ),
        ),
        Constants.sizedBox(height: 40),
        Buttons.cvButton(
          buttonName: "Send Message",
          onTap: () {},
        )
      ],
    );
  }

  FadeInDown buildContactMe() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: "Contact ",
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
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: WebSiteTextStyles.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: WebSiteColors.bgColor2,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 12));
  }
}
