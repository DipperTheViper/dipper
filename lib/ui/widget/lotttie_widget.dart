import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieWidget extends StatelessWidget {
  const LottieWidget({
    Key? key,
    required this.url,
    this.size,
  }) : super(key: key);
  final String url;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      url,
      height: size,
      width: size,
      frameRate: FrameRate.max,
    );
  }
}
