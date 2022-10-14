import 'package:flutter/material.dart';
import 'package:project/ui/Alignment_align/animated_align_screen.dart';
import 'package:project/ui/dragabble/dragabble.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> route = {
    ep1: (context) => const AnimatedAlignWidget(),
    ep2: (p0) => const DraggableScreen(),
  };

  static String ep1 = '/animated_align_screen';
  static String ep2 = '/dragabble';
}
