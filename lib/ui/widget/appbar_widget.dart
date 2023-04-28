import 'package:dipper/blocs/scroll_controller_bloc/scroll_controller_bloc.dart';
import 'package:dipper/ui/widget/image_widget.dart';
import 'package:dipper/utils/categories/images_categories.dart';
import 'package:dipper/utils/categories/section_category.dart';
import 'package:dipper/utils/categories/section_category.dart';
import 'package:dipper/utils/categories/section_category.dart';
import 'package:dipper/utils/categories/section_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      actions: [
        IconButton(
          onPressed: () {
            context.read<ScrollControllerBloc>().add(
                  ScrollToEvent(id: SectionCategory.welcomeId),
                );
          },
          icon: const Icon(
            Icons.plus_one,
          ),
        ),
        IconButton(
          onPressed: () {
            context.read<ScrollControllerBloc>().add(
                  ScrollToEvent(id: SectionCategory.aboutMeId),
                );
          },
          icon: const Icon(
            Icons.plus_one,
          ),
        ),
        IconButton(
          onPressed: () {
            context.read<ScrollControllerBloc>().add(
                  ScrollToEvent(id: SectionCategory.portfolioId),
                );
          },
          icon: const Icon(
            Icons.plus_one,
          ),
        ),
        IconButton(
          onPressed: () {
            context.read<ScrollControllerBloc>().add(
                  ScrollToEvent(id: SectionCategory.contactsId),
                );
          },
          icon: const Icon(
            Icons.plus_one,
          ),
        ),
      ],
    );
  }
}
