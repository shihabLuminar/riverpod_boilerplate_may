import 'package:flutter/material.dart';
import 'package:riverpod_boilerplate_may/presentation/counter_screen/state/counter_screen_state.dart';

class ColorScreenState {
  List<Color> colorList;
  Color? currentColor;

  ColorScreenState({required this.colorList, this.currentColor});

  ColorScreenState copyWith({
    List<Color>? colorList,
    Color? currentColor,
  }) {
    return ColorScreenState(
      colorList: colorList ?? this.colorList,
      currentColor: currentColor ?? this.currentColor,
    );
  }
}
