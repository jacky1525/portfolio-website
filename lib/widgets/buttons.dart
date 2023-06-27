import 'package:flutter/material.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/text_styles.dart';

class Buttons {
  static MaterialButton cvButton(
      {required String buttonName, required VoidCallback onTap}) {
    return MaterialButton(
      onPressed: onTap,
      color: WebSiteColors.themeColor,
      splashColor: WebSiteColors.lawGreen,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      hoverColor: WebSiteColors.aqua,
      elevation: 6,
      height: 50,
      minWidth: 130,
      focusElevation: 12,
      child: Text(
        buttonName,
        style: WebSiteTextStyles.headerTextStyle(),
      ),
    );
  }
}
