import 'package:dipper/ui/widget/icon_widget.dart';
import 'package:dipper/utils/categories/icons_categories.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.url,
    this.size = 48,
  }) : super(key: key);
  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(
        fit: BoxFit.cover,
        url,
        width: size,
        height: size,
        filterQuality: FilterQuality.high,
        errorBuilder: (context, error, stackTrace) {
          return Center(
            child: IconWidget(
              url: IconCategories.x,
              color: Colors.red,
              size: size,
            ),
          );
        },
      ),
    );
  }
}
