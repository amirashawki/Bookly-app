import 'package:bookly/Features/home/presenation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class bestSellerList extends StatelessWidget {
  const bestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
        physics:const NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: BestSellerItem(),
          );
        });
  }
}
