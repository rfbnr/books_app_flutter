import 'package:flutter/material.dart';
import 'package:flutter_books_app/models/model_books.dart';
import 'package:flutter_books_app/shared/theme.dart';
import 'package:flutter_books_app/widgets/favorite_book.dart';
import 'package:flutter_books_app/widgets/icon_star.dart';
import 'package:flutter_books_app/widgets/space.dart';
import 'package:google_fonts/google_fonts.dart';

class StackDetailBook extends StatelessWidget {
  final ModelBooks books;
  const StackDetailBook({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Text(
                  "Details Book",
                  style: primaryTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                const FavoriteBookWidget(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  books.imageBook,
                  height: 180,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        books.title,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      spaceHeight(10),
                      Text(
                        books.description,
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                      spaceHeight(10),
                      Row(
                        children: [
                          starWidget(16),
                          starWidget(16),
                          starWidget(16),
                          starWidget(16),
                          starWidget(16),
                          spaceWidth(4),
                          Text(
                            "(${books.rating})",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
