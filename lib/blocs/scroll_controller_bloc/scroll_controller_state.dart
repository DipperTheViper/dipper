part of 'scroll_controller_bloc.dart';

abstract class ScrollControllerState {}

class ScrollControllerInitial extends ScrollControllerState {}

class ScrollState extends ScrollControllerState {
  ScrollState({
    required this.scrollToId,
    required this.accordionStatus,
  });

  final ScrollToId scrollToId;
  final List<bool> accordionStatus;
}
