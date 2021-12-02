import 'dart:math';

import 'package:flutter/material.dart';

class ColorGenerator {
    Color getRandomColor(){
      var random = Random();
      return Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
    }
}