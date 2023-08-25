import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_store/constants/Colors.dart';

class CategoryButton extends StatelessWidget {
  SvgPicture icon;
  String text;
  Color backgroundColor;

  CategoryButton({
    super.key,
    required this.icon,
    required this.text,
    required this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            padding: const EdgeInsets.all(10),
            onPressed: () => {},
            icon: icon,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => backgroundColor)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(text),
          )
        ],
      );
  }
}