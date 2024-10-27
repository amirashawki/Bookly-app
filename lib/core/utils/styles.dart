import 'package:flutter/material.dart';

// اول حاجة بنركز عليها font size
// font weight تانى حاجة
// font famaily,color مش مقياس
abstract class Styles {
  static const textStyle18 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18);

  static const textStyle20 = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 20,
      fontFamily: '' //add font GT Sectra Fine font

      );

  static const textStyle30 = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 30,
      fontFamily: '' //add font GT Sectra Fine font

      );
  static const textStyle14 =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 14);
  static const textStyle16 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 16);
}
