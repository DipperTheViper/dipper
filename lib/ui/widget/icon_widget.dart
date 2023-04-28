import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
    required this.url,
    this.size = 24,
    this.color,
  }) : super(key: key);
  final String url;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      url,
      width: size,
      height: size,
      color: color,
    );
  }
}
