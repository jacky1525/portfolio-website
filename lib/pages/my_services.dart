import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/constants.dart';
import 'package:web_portfolio/constants/text_styles.dart';
import 'package:web_portfolio/helper%20class/helper_class.dart';
import 'package:web_portfolio/widgets/buttons.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isFlutter = false, isKotlin = false, isNode = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServices(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isFlutter = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Flutter',
              asset: "assets/images/flutter_icon.png",
              hover: isFlutter,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isKotlin = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Kotlin',
              asset: "assets/images/kotlin_icon.png",
              hover: isKotlin,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isNode = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Node.js',
              asset: "assets/images/node_js_icon.png",
              hover: isNode,
            ),
          )
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServices(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isFlutter = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Flutter',
                  asset: "assets/images/flutter_icon.png",
                  hover: isFlutter,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isKotlin = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Kotlin',
                  asset: "assets/images/kotlin_icon.png",
                  hover: isKotlin,
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 26.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isNode = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Node.js',
              asset: "assets/images/node_js_icon.png",
              hover: isNode,
              width: 725.0,
              hoverWidth: 735.0,
            ),
          )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServices(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isFlutter = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Flutter',
                  asset: "assets/images/flutter_icon.png",
                  hover: isFlutter,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isKotlin = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Kotlin',
                  asset: "assets/images/kotlin_icon.png",
                  hover: isKotlin,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isNode = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Node.js',
                  asset: "assets/images/node_js_icon.png",
                  hover: isNode,
                ),
              )
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.02,
      bgColor: WebSiteColors.appBarColor,
    );
  }

  FadeInDown buildMyServices() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: "My ",
          style: WebSiteTextStyles.headingStyles(fontSize: 30),
          children: [
            TextSpan(
              text: "Services",
              style: WebSiteTextStyles.headingStyles(
                  fontSize: 30, color: WebSiteColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    double width = 350,
    double hoverWidth = 360,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 390 : 380,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      decoration: BoxDecoration(
        color: WebSiteColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
              color: Colors.black54,
              spreadRadius: 4.0,
              blurRadius: 4.5,
              offset: Offset(3.0, 4.5))
        ],
        border: hover
            ? Border.all(color: WebSiteColors.themeColor, width: 3)
            : null,
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: Colors.transparent,
          ),
          Constants.sizedBox(height: 30),
          Text(
            title,
            style: WebSiteTextStyles.montserratStyle(
                color: Colors.white, fontSize: 22),
          ),
          Constants.sizedBox(height: 12),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum diam sapien, interdum vitae metus ac, vestibulum ultrices ante. Proin urna arcu, semper vitae vulputate.",
            style: WebSiteTextStyles.normalStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20),
          Buttons.cvButton(
            buttonName: "Read More",
            onTap: () {},
          )
        ],
      ),
    );
  }
}
