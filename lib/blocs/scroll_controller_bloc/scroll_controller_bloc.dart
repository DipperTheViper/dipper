import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

part 'scroll_controller_event.dart';

part 'scroll_controller_state.dart';

class ScrollControllerBloc
    extends Bloc<ScrollControllerEvent, ScrollControllerState> {
  ScrollControllerBloc() : super(ScrollControllerInitial()) {
    on<ScrollInitEvent>(
      (event, emit) {
        emit(
          ScrollState(
            accordionStatus: [
              false,
              false,
              false,
              false,
              false,
              false,
            ],
            scrollToId: event.scrollToId,
          ),
        );
      },
    );
    on<ScrollToEvent>(
      (event, emit) {
        ScrollState initState = state as ScrollState;
        initState.scrollToId.animateTo(
          event.id,
          duration: const Duration(milliseconds: 500),
          curve: Curves.linear,
        );
        emit(
          ScrollState(
            accordionStatus: initState.accordionStatus,
            scrollToId: initState.scrollToId,
          ),
        );
      },
    );
    on<ChangeAccordionStatusEvent>(
      (event, emit) {
        ScrollState initState = state as ScrollState;
        List<bool> accordionStatus = [
          false,
          false,
          false,
          false,
          false,
          false,
        ];
        if (event.isOpened) {
          accordionStatus[event.index] = true;
        }
        emit(
          ScrollState(
            accordionStatus: accordionStatus,
            scrollToId: initState.scrollToId,
          ),
        );
      },
    );
  }
}
