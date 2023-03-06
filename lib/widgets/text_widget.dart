import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:oxy_boot_shop/widgets/dynamic_size.dart';

Widget text(
  context,
  text,
  size,
  color, {
  fontfamily = 'RegularPopins',
  bold = false,
  alignText = TextAlign.start,
  maxLines = 2,
}) {
  return Text(
    text,
    textAlign: alignText,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontFamily: fontfamily,
      // fontSize: AppSizes.dynamicWidth(context, size),
      fontWeight: bold == true ? FontWeight.w600 : FontWeight.normal,
    ),
  );
}
