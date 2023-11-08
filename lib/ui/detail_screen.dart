import 'package:flutter/material.dart';
import 'package:flutter_books_app/models/model_books.dart';
import 'package:flutter_books_app/shared/theme.dart';
import 'package:flutter_books_app/widgets/card_author.dart';
import 'package:flutter_books_app/widgets/footer_copyright.dart';
import 'package:flutter_books_app/widgets/space.dart';
import 'package:flutter_books_app/widgets/stack_detail_book.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final ModelBooks books;
  const DetailScreen({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: sizeWidth > 700 ? sizeHeight * 0.8 : sizeHeight * 0.4,
                decoration: const BoxDecoration(
                  color: Color(0xff171B36),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  ),
                ),
              ),
              StackDetailBook(books: books),
            ],
          ),
          spaceHeight(70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "About The Book",
              style: primaryTextStyle,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              books.aboutBook,
              style: GoogleFonts.poppins(
                color: greyColor,
              ),
            ),
          ),
          CardAuthor(books: books),
          footerCopyright()
        ],
      ),
    );
  }
}
