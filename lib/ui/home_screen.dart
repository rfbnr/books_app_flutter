import 'package:flutter/material.dart';
import 'package:flutter_books_app/data/data_books.dart';
import 'package:flutter_books_app/models/model_books.dart';
import 'package:flutter_books_app/shared/theme.dart';
import 'package:flutter_books_app/widgets/card_books.dart';
import 'package:flutter_books_app/widgets/card_promo.dart';
import 'package:flutter_books_app/widgets/card_recommended.dart';
import 'package:flutter_books_app/widgets/footer_copyright.dart';
import 'package:flutter_books_app/widgets/space.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book of The Week",
          style: primaryTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const CardPromo(),
          spaceHeight(50),
          Text(
            "Recommended for you",
            style: primaryTextStyle,
          ),
          const CardRecommended(),
          spaceHeight(50),
          Text(
            "Popular Books",
            style: primaryTextStyle,
          ),
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: dataBooks.length,
            itemBuilder: (context, index) {
              final ModelBooks books = dataBooks[index];

              return CardBooks(books: books);
            },
          ),
          footerCopyright(),
        ],
      ),
    );
  }
}
