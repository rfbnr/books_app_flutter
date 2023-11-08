import 'package:flutter/material.dart';
import 'package:flutter_books_app/models/model_books.dart';
import 'package:flutter_books_app/shared/theme.dart';
import 'package:flutter_books_app/ui/detail_screen.dart';
import 'package:flutter_books_app/widgets/icon_star.dart';
import 'package:flutter_books_app/widgets/space.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBooks extends StatelessWidget {
  final ModelBooks books;

  const CardBooks({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(books: books);
        }));
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                books.imageBook,
                height: 120,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      books.title,
                      style: secondaryTextStyle,
                    ),
                    spaceHeight(5),
                    Text(
                      books.author,
                      style: secondaryTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                    spaceHeight(5),
                    Row(
                      children: [
                        starWidget(14),
                        Text(
                          "${books.rating} | ${books.review}",
                          style: secondaryTextStyle.copyWith(
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ),
                    spaceHeight(8),
                    Text(
                      "\$${books.price}",
                      style: secondaryTextStyle.copyWith(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 25,
                      width: 70,
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
                            fontSize: 10,
                            color: Colors.white,
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
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
