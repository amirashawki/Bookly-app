import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:bookly/Features/home/presenation/views/widgets/custom_appBar.dart';
import 'package:bookly/Features/home/presenation/views/widgets/list_of_books.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customAppBar(),
            const SizedBox(
              height: 20,
            ),
            listOfBooks(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Best Saller',
              style: Styles.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
