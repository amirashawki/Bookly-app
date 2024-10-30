import 'package:bookly/Features/home/presenation/views/widgets/action_button.dart';
import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:bookly/Features/home/presenation/views/widgets/custom_Book_Details_AppBar.dart';
import 'package:bookly/Features/home/presenation/views/widgets/rating_book.dart';
import 'package:bookly/Features/home/presenation/views/widgets/similar_book_listView.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.3),
            child: cardofBook(),
          ),
          const SizedBox(
            height: 8,
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
          const SizedBox(
            height: 45,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like ',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SimilarBookListview()
        ],
      ),
    );
  }
}
