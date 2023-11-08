import 'package:flutter/material.dart';
import 'package:flutter_books_app/data/data_books.dart';
import 'package:flutter_books_app/models/model_books.dart';
import 'package:flutter_books_app/ui/detail_screen.dart';

class CardRecommended extends StatelessWidget {
  const CardRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: dataBooks.length,
        itemBuilder: (context, index) {
          final ModelBooks books = dataBooks[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailScreen(books: books);
                  },
                ),
              );
            },
            child: Image.asset(
              books.imageBook,
              height: 160,
            ),
          );
        },
      ),
    );
  }
}
