import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    this.mainAxisAlignment = MainAxisAlignment.start,
    super.key,
    required this.rating,
    required this.count,
  });
  final int rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle14,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text('($count)',
              style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w600)),
        )
      ],
    );
  }
}
