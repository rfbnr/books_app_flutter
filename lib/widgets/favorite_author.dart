import 'package:flutter/material.dart';
import 'package:flutter_books_app/shared/theme.dart';
import 'package:flutter_books_app/widgets/icon_star.dart';

class FavoriteAuthorWidget extends StatefulWidget {
  const FavoriteAuthorWidget({super.key});

  @override
  State<FavoriteAuthorWidget> createState() => _FavoriteAuthorWidgetState();
}

class _FavoriteAuthorWidgetState extends State<FavoriteAuthorWidget> {
  bool _isStarFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isStarFavorite = !_isStarFavorite;
        });
      },
      icon: _isStarFavorite
          ? starWidget(24)
          : Icon(Icons.star_border_outlined, color: greyColor, size: 24),
    );
  }
}
