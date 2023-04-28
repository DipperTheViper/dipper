import 'package:dipper/blocs/scroll_controller_bloc/scroll_controller_bloc.dart';
import 'package:dipper/ui/widget/appbar_widget.dart';
import 'package:dipper/ui/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late ScrollController scrollController;
  late ScrollToId scrollToId;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollToId = ScrollToId(scrollController: scrollController);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScrollControllerBloc()
        ..add(
          ScrollInitEvent(scrollToId: scrollToId),
        ),
      child: const Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 64),
          child: AppbarWidget(),
        ),
        body: MainBody(),
      ),
    );
  }
}
