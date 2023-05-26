import 'package:accordion/controllers.dart';
import 'package:dipper/ui/widget/icon_widget.dart';
import 'package:dipper/ui/widget/lotttie_widget.dart';
import 'package:dipper/utils/categories/icons_categories.dart';
import 'package:dipper/utils/categories/locale_categories.dart';
import 'package:dipper/utils/categories/lottie_category.dart';
import 'package:dipper/utils/styles/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:localization/localization.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    LocaleCategories.aboutMe.i18n(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                Accordion(
                  maxOpenSections: 1,
                  scaleWhenAnimating: true,
                  openAndCloseAnimation: true,
                  sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  sectionClosingHapticFeedback: SectionHapticFeedback.light,
                  children: [
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.calender,
                        size: 32,
                        color: ColorsCategory.black,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.bornTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                LocaleCategories.bornDescription.i18n(),
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.birthday,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.education,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.universityTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                LocaleCategories.universityDescription.i18n(),
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.university,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.award,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.icpcTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                LocaleCategories.icpcDescription.i18n(),
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.competition,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.sad,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.coronaTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                LocaleCategories.coronaDescription.i18n(),
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.frontEnd,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.cup,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.baristaTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                LocaleCategories.baristaDescription.i18n(),
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.barista,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.happy,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.narvanTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                LocaleCategories.narvanDescription.i18n(),
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Expanded(
                            flex: 3,
                            child: LottieWidget(
                              url: LottieCategory.flutter,
                            ),
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ],
            );
          } else {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    LocaleCategories.aboutMe.i18n(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                Accordion(
                  maxOpenSections: 1,
                  scaleWhenAnimating: true,
                  openAndCloseAnimation: true,
                  sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  sectionClosingHapticFeedback: SectionHapticFeedback.light,
                  children: [
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.calender,
                        size: 32,
                        color: ColorsCategory.black,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.bornTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              LocaleCategories.bornDescription.i18n(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.birthday,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.education,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.universityTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              LocaleCategories.universityDescription.i18n(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.university,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.award,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.icpcTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              LocaleCategories.icpcDescription.i18n(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.competition,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.sad,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.coronaTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              LocaleCategories.coronaDescription.i18n(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.frontEnd,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.cup,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.baristaTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              LocaleCategories.baristaDescription.i18n(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.barista,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                    AccordionSection(
                      isOpen: false,
                      leftIcon: const IconWidget(
                        url: IconCategories.happy,
                        size: 32,
                      ),
                      rightIcon: const SizedBox(),
                      headerBackgroundColor: Colors.transparent,
                      headerBackgroundColorOpened: Colors.transparent,
                      header: Text(
                        LocaleCategories.narvanTitle.i18n(),
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              LocaleCategories.narvanDescription.i18n(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          const LottieWidget(
                            url: LottieCategory.flutter,
                          ),
                        ],
                      ),
                      contentHorizontalPadding: 0,
                      contentVerticalPadding: 0,
                      contentBorderWidth: 0,
                      contentBorderColor: Colors.transparent,
                      contentBackgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
