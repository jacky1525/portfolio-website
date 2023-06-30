// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/constants.dart';
import 'package:web_portfolio/constants/portfolio_text.dart';
import 'package:web_portfolio/constants/text_styles.dart';
import 'package:web_portfolio/helper%20class/helper_class.dart';

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  final onHoverEffect = Matrix4.identity()..scale(1.0);

  List images = <String>[
    "assets/images/card.jpeg",
    "assets/images/card.jpeg",
    "assets/images/card.jpeg",
    "assets/images/card.jpeg",
    "assets/images/card.jpeg",
    "assets/images/card.jpeg"
  ];

  List appTitles = <String>[
    Lol().title,
    RaM().title,
    GaC().title,
    ToDo().title,
    Astrology().title,
    Gamerzone().title
  ];

  List appDescription = <String>[
    Lol().description,
    RaM().description,
    GaC().description,
    ToDo().description,
    Astrology().description,
    Gamerzone().description
  ];

  var hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildLatestProjects(),
          Constants.sizedBox(height: 40.0),
          buildGridView(crossAxisCount: 1)
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildLatestProjects(),
          Constants.sizedBox(height: 40.0),
          buildGridView(crossAxisCount: 1)
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildLatestProjects(),
          Constants.sizedBox(height: 40.0),
          buildGridView(crossAxisCount: 3),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: WebSiteColors.bgColor2,
    );
  }

  GridView buildGridView({required int crossAxisCount}) {
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisExtent: 280,
          mainAxisSpacing: 24,
          crossAxisSpacing: 24),
      itemBuilder: (context, index) {
        var image = images[index];
        return FadeInUpBig(
          duration: const Duration(milliseconds: 1600),
          child: InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                if (value) {
                  hoveredIndex = index;
                } else {
                  hoveredIndex = null;
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Visibility(
                  visible: index == hoveredIndex,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    transform: index == hoveredIndex ? onHoverEffect : null,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            WebSiteColors.themeColor.withOpacity(1.0),
                            WebSiteColors.themeColor.withOpacity(0.9),
                            WebSiteColors.themeColor.withOpacity(0.8),
                            WebSiteColors.themeColor.withOpacity(0.6),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Column(
                      children: [
                        Text(
                          appTitles[index],
                          style: WebSiteTextStyles.montserratStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                        Constants.sizedBox(height: 15),
                        Text(
                          appDescription[index],
                          style: WebSiteTextStyles.normalStyle(),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  FadeInDown buildLatestProjects() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: "Latest ",
          style: WebSiteTextStyles.headingStyles(fontSize: 30),
          children: [
            TextSpan(
              text: "Projects",
              style: WebSiteTextStyles.headingStyles(
                  fontSize: 30, color: WebSiteColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }
}
