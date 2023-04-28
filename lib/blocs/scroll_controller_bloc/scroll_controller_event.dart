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
