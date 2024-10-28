import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boilerplate_may/presentation/color_screen/controller/color_screen_controller.dart';
import 'package:riverpod_boilerplate_may/presentation/color_screen/state/color_screen_state.dart';

class Colorscreen extends ConsumerWidget {
  const Colorscreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScreenState =
        ref.watch(colorScreenStateNotifierProvider) as ColorScreenState;
    return Scaffold(
      backgroundColor: colorScreenState.currentColor,
      body: ListView.separated(
          padding: EdgeInsets.all(60),
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  ref
                      .read(colorScreenStateNotifierProvider.notifier)
                      .onColorSelection(colorScreenState.colorList[index]);
                },
                child: Container(
                  height: 80,
                  color: colorScreenState.colorList[index],
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(height: 16),
          itemCount: 10),
    );
  }
}
