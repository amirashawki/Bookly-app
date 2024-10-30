import 'package:bookly/Features/home/presenation/views/widgets/similar_book_listView.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also like ',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          SimilarBookListview(),
        ],
      ),
    );
  }
}
