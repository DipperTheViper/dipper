import 'package:dipper/ui/widget/image_widget.dart';
import 'package:dipper/ui/widget/lotttie_widget.dart';
import 'package:dipper/utils/categories/images_categories.dart';
import 'package:dipper/utils/categories/locale_categories.dart';
import 'package:dipper/utils/categories/lottie_category.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 1,
                  child: ImageWidget(
                    url: ImageCategories.dipper,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        LottieWidget(
                          url: LottieCategory.coder,
                          // size: 320,
                        ),
                        WelcomeHeader(),
                        WelcomeDescription(),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: ImageWidget(
                      url: ImageCategories.dipper,
                    ),
                  ),
                  WelcomeHeader(),
                  WelcomeDescription(),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      isRepeatingAnimation: true,
      pause: const Duration(seconds: 3),
      repeatForever: true,

      animatedTexts: [
        TypewriterAnimatedText(
          speed: const Duration(milliseconds: 300),
          LocaleCategories.welcomeHeader.i18n(),
          textStyle: Theme.of(context).textTheme.displayLarge,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

class WelcomeDescription extends StatelessWidget {
  const WelcomeDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: Theme.of(context).textTheme.titleLarge,
        children: [
          TextSpan(
            text: LocaleCategories.welcomeJobTitle.i18n(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          TextSpan(
            text: LocaleCategories.welcomeDescription.i18n(),
          ),
        ],
      ),
    );
  }
}
