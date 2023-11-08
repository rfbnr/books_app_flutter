import 'package:flutter/material.dart';
import 'package:flutter_books_app/shared/theme.dart';
import 'package:flutter_books_app/widgets/space.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPromo extends StatelessWidget {
  const CardPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20),
      elevation: 5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/book9.png",
            height: MediaQuery.of(context).size.width > 700 ? 280 : 180,
          ),
          spaceHeight(10),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Psychology of Money",
                    style: secondaryTextStyle,
                  ),
                  spaceHeight(10),
                  Text(
                      "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
                      style: greyTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 25,
                          width: 85,
                          decoration: const BoxDecoration(
                            color: Color(0xffDE7773),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Grab Now",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Learn More",
                          style: GoogleFonts.poppins(
                            color: secondaryColor,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
