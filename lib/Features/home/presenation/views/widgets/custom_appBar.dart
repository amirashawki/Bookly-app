import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Image.asset(
        AssetData.logo,
        height: 15,
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: Icon(FontAwesomeIcons.magnifyingGlass,size: 18,))
      ],
    );
  }
}
