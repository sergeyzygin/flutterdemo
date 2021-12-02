import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:testapp/utils/color_generator.dart';

class ColorCubit extends Cubit<Color> {
  ColorGenerator _colorGenerator = GetIt.I.get<ColorGenerator>();

  ColorCubit() : super(Colors.red);

  void newColor() {
    emit(_colorGenerator.getRandomColor());
  }
}