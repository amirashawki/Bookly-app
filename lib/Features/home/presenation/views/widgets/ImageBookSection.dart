import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presenation/views/widgets/action_button.dart';
import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:bookly/Features/home/presenation/views/widgets/rating_book.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ImageBookSection extends StatelessWidget {
  const ImageBookSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.3),
          child: ImageofBook(
            urlImage: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          bookModel.volumeInfo.title ?? '',
          textAlign: TextAlign.center,
          style: Styles.textStyle27.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.pageCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 25,
        ),
        ActionButton(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
