import 'package:flutter/material.dart';
import 'package:project/constants/colors.dart';
import 'package:project/constants/text_theme.dart';
import 'package:project/utils/device_utils.dart';
import 'package:project/utils/task_list.dart';
import 'package:project/widget/light_app_bar.dart';
import 'package:project/widget/list_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LightAppBar(title: 'Home screen'),
      body: SafeArea(
          child: Column(
        children: [
          DeviceUtils.blankHeight(26),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              var data = tasks[index];
              return ListCard(data: data);
            }),
            separatorBuilder: (ctx, index) => DeviceUtils.blankHeight(16),
            itemCount: tasks.length,
          ),
        ],
      )),
    );
  }
}
