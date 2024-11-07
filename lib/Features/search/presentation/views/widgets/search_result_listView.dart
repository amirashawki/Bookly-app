import 'package:bookly/Features/home/presenation/views/widgets/Newest_Book_Item%20.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return const Padding(
            padding: const EdgeInsets.only(bottom: 10),
            // child: NewestBookItem(),
            child: Text('fgh'),
          );
        });
  }
}
