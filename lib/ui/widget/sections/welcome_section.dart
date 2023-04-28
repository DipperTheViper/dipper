import 'package:dipper/ui/widget/image_widget.dart';
import 'package:dipper/utils/categories/images_categories.dart';
import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ImageWidget(
            url: ImageCategories.dipper,
            size: 180,
          ),
          SizedBox(
            height: 180,
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Hello, I'm Mahdi",
                    //TODO add animation text write and clear
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleLarge,
                      children: [
                        TextSpan(
                          text: "Mobile developer",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const TextSpan(
                          text:
                              " with passion to experience new challenges and learning!",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
