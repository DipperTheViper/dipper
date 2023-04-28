import 'package:dipper/blocs/scroll_controller_bloc/scroll_controller_bloc.dart';
import 'package:dipper/utils/categories/section_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollControllerBloc, ScrollControllerState>(
      builder: (context, state) {
        if (state is ScrollState) {
          return InteractiveScrollViewer(
            scrollToId: state.scrollToId,
            children: [
              ScrollContent(
                id: SectionCategory.welcomeId,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.red,
                ),
              ),
              ScrollContent(
                id: SectionCategory.aboutMeId,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.green,
                ),
              ),
              ScrollContent(
                id: SectionCategory.portfolioId,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.yellow,
                ),
              ),
              ScrollContent(
                id: SectionCategory.contactsId,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.orange,
                ),
              ),
            ],
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
