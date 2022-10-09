import 'package:flutter/material.dart';
import 'package:project/ui/Alignment_align/animated_align_screen.dart';

class Routes {
 static Map<String, Widget Function(BuildContext)> route = {
  day1:(context) => const AnimatedAlignWidget(), 
 };

  static String day1='/day_1_animated_align';
}
