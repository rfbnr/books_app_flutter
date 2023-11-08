import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xff292B38);
Color secondaryColor = const Color(0xff4D506C);
Color greyColor = const Color(0xff9091A0);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 14,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: secondaryColor,
  fontWeight: FontWeight.w400,
  fontSize: 8,
);
