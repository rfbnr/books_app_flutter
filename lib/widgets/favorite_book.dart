import 'package:flutter/material.dart';

class FavoriteBookWidget extends StatefulWidget {
  const FavoriteBookWidget({super.key});

  @override
  State<FavoriteBookWidget> createState() => _FavoriteBookWidgetState();
}

class _FavoriteBookWidgetState extends State<FavoriteBookWidget> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isFavorite = !_isFavorite;
        });
      },
      icon: _isFavorite
          ? const Icon(Icons.favorite, color: Colors.red, size: 25)
          : const Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 25,
            ),
    );
  }
}
