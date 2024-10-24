import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:bookly/Features/home/presenation/views/widgets/custom_appBar.dart';
import 'package:bookly/Features/home/presenation/views/widgets/list_of_books.dart';
import 'package:bookly/core/utils/assets.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customAppBar(),
            const SizedBox(
              height: 20,
            ),

            cardofBook(),
            // listOfBooks(),
          const  Text('Best Saller')
          ],
        ),
      ),
    );
  }
}
