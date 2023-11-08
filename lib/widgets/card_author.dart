import 'package:flutter/material.dart';
import 'package:flutter_books_app/models/model_books.dart';
import 'package:flutter_books_app/shared/theme.dart';
import 'package:flutter_books_app/widgets/favorite_author.dart';
import 'package:google_fonts/google_fonts.dart';

class CardAuthor extends StatelessWidget {
  final ModelBooks books;
  const CardAuthor({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 20,
                ),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(books.imageAuthor),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Author",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: greyColor,
                      ),
                    ),
                    Text(
                      books.author,
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Published: ${books.published}",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: greyColor,
                      ),
                    ),
                  ],
                ),
              ),
              const FavoriteAuthorWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
