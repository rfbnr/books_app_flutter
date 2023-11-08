import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_books_app/shared/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget footerCopyright() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 60),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "2023 \u00a9 Made by ",
        style: GoogleFonts.poppins(
          fontSize: 12,
          color: primaryColor,
        ),
        children: [
          TextSpan(
            text: "Ridwan Febnur Asri Redinda",
            style: GoogleFonts.poppins(
              decoration: TextDecoration.underline,
              color: Colors.indigo,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => launchUrlString(
                  "https://github.com/ridwanfbnr/books_app_flutter"),
          ),
        ],
      ),
    ),
  );
}
