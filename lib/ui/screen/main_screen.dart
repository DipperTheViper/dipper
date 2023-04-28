import 'package:dipper/blocs/scroll_controller_bloc/scroll_controller_bloc.dart';
import 'package:dipper/ui/widget/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
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
      create: (context) => ScrollControllerBloc(
        scrollController: scrollController,
      ),
      child: BlocBuilder<ScrollControllerBloc, ScrollControllerState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const AppbarWidget().build(context),
            body: ListView(
              controller: state.scrollController,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.red,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.green,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.yellow,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.orange,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
