import 'package:dipper/blocs/scroll_controller_bloc/scroll_controller_bloc.dart';
import 'package:dipper/ui/widget/button_widget.dart';
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
      actions: [
        TextButtonWidget(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          text: "Welcome",
          onPressed: () {
            context.read<ScrollControllerBloc>().add(
                  ScrollToEvent(id: SectionCategory.welcomeId),
                );
          },
        ),
        TextButtonWidget(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          text: "About Me",
          onPressed: () {
            context.read<ScrollControllerBloc>().add(
                  ScrollToEvent(id: SectionCategory.aboutMeId),
                );
          },
        ),
        TextButtonWidget(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          text: "Portfolio",
          onPressed: () {
            context.read<ScrollControllerBloc>().add(
                  ScrollToEvent(id: SectionCategory.portfolioId),
                );
          },
        ),
        TextButtonWidget(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          text: "Contact",
          onPressed: () {
            context.read<ScrollControllerBloc>().add(
                  ScrollToEvent(id: SectionCategory.contactsId),
                );
          },
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
