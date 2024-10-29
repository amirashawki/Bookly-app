import 'package:bookly/Features/home/presenation/views/widgets/custom_Book_Details_AppBar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [customBookDetailsAppBar()],
      ),
    );
  }
}
