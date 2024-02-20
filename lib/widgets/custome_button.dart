import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/textSize.dart';

class customBtn extends StatelessWidget {
  const customBtn({
    super.key,
    required this.size,
    required this.text, 
    required this.onTap,
    this.color,
  });

  final Size size;
  final String text;
  final void Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color ?? primaryColor,
          borderRadius: BorderRadius.circular(10)
        ),
        alignment: Alignment.center,
        height: size.height *.07,
        width: size.width * .40,
        child: Text(
          text,
          style: btnText,
        ),
      ),
    );
  }
}