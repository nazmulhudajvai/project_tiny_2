import 'package:get/get.dart';
import '../../data/models/goal_model.dart';

class GoalController extends GetxController {
  var goal = GoalModel(
    totalTasks: 30,
    completedTasks: 19,
    missedTasks: 7,
    daysLeft: 11,
  ).obs;

  void updateProgress(int completed, int missed) {
    goal.value = goal.value.copyWith(
      completedTasks: completed,
      missedTasks: missed,
    );
  }

  void resetGoal() {
    goal.value = GoalModel(
      totalTasks: 30,
      completedTasks: 0,
      missedTasks: 0,
      daysLeft: 30,
    );
  }
}
