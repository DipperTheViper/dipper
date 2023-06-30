part of 'scroll_controller_bloc.dart';

abstract class ScrollControllerEvent {}

class ScrollInitEvent extends ScrollControllerEvent {
  ScrollInitEvent({
    required this.scrollToId,
  });

  final ScrollToId scrollToId;
}

class ScrollToEvent extends ScrollControllerEvent {
  ScrollToEvent({
    required this.id,
  });

  final String id;
}

class ChangeAccordionStatusEvent extends ScrollControllerEvent {
  ChangeAccordionStatusEvent({
    this.index = 0,
    required this.isOpened,
  });

  final int index;
  final bool isOpened;
}
