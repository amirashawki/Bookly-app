import 'package:bookly/Features/home/presenation/views/widgets/best_seller_item.dart';
import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:flutter/material.dart';

class SimilarBookListview extends StatelessWidget {
  const SimilarBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: cardofBook(),
            );
          }),
    );
  }
}
