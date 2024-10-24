
import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:flutter/material.dart';

class listOfBooks extends StatelessWidget {
  const listOfBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context, index) {
            return cardofBook();
          }),
    );
  }
}
