import 'package:flutter/material.dart';

class cardofBook extends StatelessWidget {
  const cardofBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/test_image.png'))),
          )),
    );
  }
}
