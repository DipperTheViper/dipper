import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'scroll_controller_event.dart';

part 'scroll_controller_state.dart';

class ScrollControllerBloc
    extends Bloc<ScrollControllerEvent, ScrollControllerState> {
  ScrollControllerBloc(
    ScrollController scrollController,
  ) : super(
          ScrollControllerState(
            scrollController: scrollController,
          ),
        ) {
    on<ScrollControllerEvent>(
      (event, emit) {
        // TODO: implement event handler
      },
    );
  }
}
