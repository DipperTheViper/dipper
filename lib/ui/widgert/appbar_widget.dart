import 'package:dipper/ui/widgert/image_widget.dart';
import 'package:dipper/utils/categories/images_categories.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const ImageWidget(
            url: ImageCategories.dipper,
            size: 48,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dipper",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Mobile Developer",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
      centerTitle: false,
    );
  }
}
