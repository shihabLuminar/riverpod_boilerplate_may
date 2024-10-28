import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boilerplate_may/presentation/color_screen/state/color_screen_state.dart';

final colorScreenStateNotifierProvider =
    StateNotifierProvider((ref) => ColorScreenStateNotifier());

class ColorScreenStateNotifier extends StateNotifier<ColorScreenState> {
  ColorScreenStateNotifier()
      : super(ColorScreenState(
          colorList: [
            Colors.red,
            Colors.blue,
            Colors.green,
            Colors.grey,
            Colors.black,
            Colors.yellow,
            Colors.purple,
            Colors.yellow,
            Colors.blueGrey,
            Colors.yellow,
            Colors.orange,
            Colors.yellow,
            Colors.green,
            Colors.yellow,
            Colors.cyan,
            Colors.yellow,
          ],
        ));

  onColorSelection(Color newColor) {
    state = state.copyWith(currentColor: newColor);
  }
}
