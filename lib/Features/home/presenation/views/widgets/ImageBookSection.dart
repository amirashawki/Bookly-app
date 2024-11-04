import 'package:bookly/Features/home/presenation/views/widgets/action_button.dart';
import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:bookly/Features/home/presenation/views/widgets/rating_book.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ImageBookSection extends StatelessWidget {
  const ImageBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.3),
          child: cardofBook(urlImage: '',),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle27.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 25,
        ),
        const ActionButton(),
      ],
    );
  }
}
