import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:flutter/material.dart';

class listOfBooks extends StatelessWidget {
  const listOfBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: cardofBook(),
            );
          }),
    );
  }
}
