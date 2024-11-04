import 'package:flutter/material.dart';

class cardofBook extends StatelessWidget {
  const cardofBook({
    super.key, required this.urlImage,
  });
 final String urlImage;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image:NetworkImage(urlImage))),
        ));
  }
}
