import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';

// اول حاجة بنركز عليها font size
// font weight تانى حاجة
// font famaily,color مش مقياس
abstract class Styles {
  static const textStyle16 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 16);

  static const textStyle17 =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 17);

  static const textStyle27 = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 27, fontFamily: kGTSectraFine);
  static const textStyle12 =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 12);
  static const textStyle14 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 14);
}
