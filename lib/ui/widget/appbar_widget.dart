import 'package:dipper/blocs/scroll_controller_bloc/scroll_controller_bloc.dart';
import 'package:dipper/ui/widget/button_widget.dart';
import 'package:dipper/ui/widget/icon_widget.dart';
import 'package:dipper/utils/categories/icons_categories.dart';
import 'package:dipper/utils/categories/section_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // title: Row(
      //   children: [
      //     const ImageWidget(
      //       url: ImageCategories.dipper,
      //       size: 48,
      //     ),
      //     const SizedBox(width: 8),
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Text(
      //           "Dipper",
      //           style: Theme.of(context).textTheme.titleMedium,
      //         ),
      //         Text(
      //           "Mobile Developer",
      //           style: Theme.of(context).textTheme.titleSmall,
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      centerTitle: true,
      title: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButtonWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  text: "Welcome",
                  style: Theme.of(context).textTheme.headlineLarge,
                  onPressed: () {
                    context.read<ScrollControllerBloc>().add(
                          ScrollToEvent(id: SectionCategory.welcomeId),
                        );
                  },
                ),
                TextButtonWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  text: "About Me",
                  style: Theme.of(context).textTheme.headlineLarge,
                  onPressed: () {
                    context.read<ScrollControllerBloc>().add(
                          ScrollToEvent(id: SectionCategory.aboutMeId),
                        );
                  },
                ),
                TextButtonWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  text: "Portfolio",
                  style: Theme.of(context).textTheme.headlineLarge,
                  onPressed: () {
                    context.read<ScrollControllerBloc>().add(
                          ScrollToEvent(id: SectionCategory.portfolioId),
                        );
                  },
                ),
                TextButtonWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  text: "Contact",
                  style: Theme.of(context).textTheme.headlineLarge,
                  onPressed: () {
                    context.read<ScrollControllerBloc>().add(
                          ScrollToEvent(id: SectionCategory.contactsId),
                        );
                  },
                ),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButtonWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  padding: const EdgeInsets.all(4),
                  onPressed: () {
                    context.read<ScrollControllerBloc>().add(
                          ScrollToEvent(id: SectionCategory.welcomeId),
                        );
                  },
                  child: const IconWidget(
                    url: IconCategories.home,
                    size: 32,
                  ),
                ),
                IconButtonWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  padding: const EdgeInsets.all(4),
                  onPressed: () {
                    context.read<ScrollControllerBloc>().add(
                          ScrollToEvent(id: SectionCategory.aboutMeId),
                        );
                  },
                  child: const IconWidget(
                    url: IconCategories.infoCircle,
                    size: 32,
                  ),
                ),
                IconButtonWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  padding: const EdgeInsets.all(4),
                  onPressed: () {
                    context.read<ScrollControllerBloc>().add(
                          ScrollToEvent(id: SectionCategory.portfolioId),
                        );
                  },
                  child: const IconWidget(
                    url: IconCategories.profile,
                    size: 32,
                  ),
                ),
                IconButtonWidget(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  padding: const EdgeInsets.all(4),
                  onPressed: () {
                    context.read<ScrollControllerBloc>().add(
                          ScrollToEvent(id: SectionCategory.contactsId),
                        );
                  },
                  child: const IconWidget(
                    url: IconCategories.call,
                    size: 32,
                  ),
                ),
                // TextButtonWidget(
                //   margin: const EdgeInsets.symmetric(horizontal: 2),
                //   text: "Welcome",
                //   style: Theme.of(context).textTheme.headlineLarge,
                //   onPressed: () {
                //     context.read<ScrollControllerBloc>().add(
                //           ScrollToEvent(id: SectionCategory.welcomeId),
                //         );
                //   },
                // ),
                // TextButtonWidget(
                //   margin: const EdgeInsets.symmetric(horizontal: 2),
                //   text: "About Me",
                //   style: Theme.of(context).textTheme.headlineLarge,
                //   onPressed: () {
                //     context.read<ScrollControllerBloc>().add(
                //           ScrollToEvent(id: SectionCategory.aboutMeId),
                //         );
                //   },
                // ),
                // TextButtonWidget(
                //   margin: const EdgeInsets.symmetric(horizontal: 2),
                //   text: "Portfolio",
                //   style: Theme.of(context).textTheme.headlineLarge,
                //   onPressed: () {
                //     context.read<ScrollControllerBloc>().add(
                //           ScrollToEvent(id: SectionCategory.portfolioId),
                //         );
                //   },
                // ),
                // TextButtonWidget(
                //   margin: const EdgeInsets.symmetric(horizontal: 2),
                //   text: "Contact",
                //   style: Theme.of(context).textTheme.headlineLarge,
                //   onPressed: () {
                //     context.read<ScrollControllerBloc>().add(
                //           ScrollToEvent(id: SectionCategory.contactsId),
                //         );
                //   },
                // ),
              ],
            );
          }
        },
      ),
    );
  }
}
