import 'package:project/utils/routes.dart';

class DailyTask {
  String title;
  String description;
  DateTime cretedAt;
  String route;

  DailyTask({
    required this.description,
    required this.title,
    required this.cretedAt,
    required this.route,
  });
}

List<DailyTask> tasks = [
  DailyTask(
    description: 'Animated align',
    title: 'Day 1',
    cretedAt: DateTime(2022, 10, 8),
    route: Routes.day1,
  ),
];
