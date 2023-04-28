import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'scroll_controller_event.dart';

part 'scroll_controller_state.dart';

class ScrollControllerBloc
    extends Bloc<ScrollControllerEvent, ScrollControllerState> {
  ScrollControllerBloc({
    required ScrollController scrollController,
  }) : super(
          ScrollControllerState(
            scrollController: scrollController,
          ),
        ) {
    on<ScrollToFirstEvent>(
      (event, emit) {

      },
    );
    on<ScrollToSecondEvent>(
      (event, emit) {
        // TODO: implement event handler
      },
    );
    on<ScrollToThirdEvent>(
      (event, emit) {
        // TODO: implement event handler
      },
    );
    on<ScrollToFourthEvent>(
      (event, emit) {
        // TODO: implement event handler
      },
    );
  }
}
