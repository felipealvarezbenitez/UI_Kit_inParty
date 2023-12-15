import 'package:flutter/material.dart';

class ColorsApp {
  Color primary1 = const Color(0xFFA0BC73);
  Color primary2 = const Color.fromARGB(255, 212, 226, 188);
  Color primary3 = const Color(0xFFE07318);

  Color secondary1 = const Color(0xFFD8460F);
  Color secondary2 = const Color(0xFF153259);
  Color secondary3 = const Color.fromARGB(255, 120, 173, 40);
  Color secondary4 = const Color(0xFFD98E04);

  Color secondaryLight1 = const Color(0x22D8460F);
  Color secondaryLight2 = const Color(0x22153259);
  Color secondaryLight3 = const Color(0x44A0BC73);
  Color secondaryLight4 = const Color(0x22D98E04);
  Color secondaryLight5 = const Color(0xFFF8B3B3);
  Color secondaryLight6 = const Color.fromARGB(255, 255, 162, 162);

  Color progressBarBackground = const Color(0xFFF2E8D5);

  Color menu = const Color(0xFF153259);

  Color blackBackgroundPrimary = const Color.fromARGB(255, 0, 0, 0);
  Color blackBackgroundSecondary = const Color.fromARGB(255, 71, 71, 71);

  Color backgroundPrimary = const Color.fromARGB(255, 255, 255, 255);
  Color backgroundSecondary = const Color.fromARGB(255, 235, 235, 235);

  Color backgroundGray = const Color(0x22000000);
  Color backgroundGrayLight = const Color(0x22000000);
  Color backgroundWhite = const Color(0xFFFFFFFF);

  Color background1 = const Color(0xFFFEFAF5);
  Color background2 = const Color(0xFFF7FEF5);
  Color backgroundDark = const Color(0xFF262837);
  Color borderLight = const Color(0xffCCCCCC);

  Color shadow = const Color(0xFFA0BC73);

  Color disabled = const Color(0xFFEEEEEE);

  Color font = const Color(0xFF2E2E2E);
  Color fontGrey = const Color(0xFF9B9999);
  Color fontLight = const Color(0xFFFFFFFF);

  ColorsApp({theme = "light"}) {
    if (theme == "dark") {
      background1 = const Color(0xFF2F3142);
      background2 = const Color(0xFF262837);
      menu = const Color(0xFFFFFFFF);
      font = const Color(0xFFFFFFFF);
      secondaryLight2 = const Color(0xFF253F7F);
      secondary2 = const Color(0xFF92D6FB);
      backgroundGray = background1;
      backgroundWhite = const Color(0xFF6F7079);
      backgroundGrayLight = const Color(0xFF434251);
      shadow = Colors.black54;
    }
  }
}
