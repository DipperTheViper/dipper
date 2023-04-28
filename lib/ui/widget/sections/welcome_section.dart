import 'package:dipper/ui/widget/image_widget.dart';
import 'package:dipper/ui/widget/lotttie_widget.dart';
import 'package:dipper/utils/categories/images_categories.dart';
import 'package:dipper/utils/categories/lottie_category.dart';
import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ImageWidget(
            url: ImageCategories.dipper,
            size: 480,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const LottieWidget(
                    url: LottieCategory.coder,
                    // size: 320,
                  ),Text(
                    "Hello, I'm Mahdi",
                    //TODO: add animation text write and clear
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
                              " with a passion to experience new challenges and learning!",
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
