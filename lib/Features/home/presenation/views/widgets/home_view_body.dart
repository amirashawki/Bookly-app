import 'package:bookly/Features/home/presenation/views/widgets/best_seller_item.dart';
import 'package:bookly/Features/home/presenation/views/widgets/best_seller_list.dart';
import 'package:bookly/Features/home/presenation/views/widgets/card_Book.dart';
import 'package:bookly/Features/home/presenation/views/widgets/custom_appBar.dart';
import 'package:bookly/Features/home/presenation/views/widgets/list_of_books.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Best Saller',
                  style: Styles.textStyle16.copyWith(fontFamily: kGTSectraFine),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: bestSellerList(),
          ),
        )
      ],
    ));
  }
}
