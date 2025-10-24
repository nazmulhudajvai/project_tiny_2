import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinny_app/theams/app_color.dart';
import '../../controllers/goal_controller.dart';

class GoalStatusScreen extends StatelessWidget {
  final controller = Get.put(GoalController());

  Color _getProgressColor(double progress) {
    if (progress == 1.0) return Colors.green;
    if (progress >= 0.6) return Colors.lightGreen;
    if (progress >= 0.3) return Colors.orange;
    return Colors.red;
  }

  String _getTitle(double progress) {
    if (progress == 1.0) return "🎉 Congratulations!";
    if (progress >= 0.6) return "You're Doing Great!";
    if (progress >= 0.3) return "Let's Get Back on Track";
    return "Goal Not Completed";
  }

  String _getSubtitle(double progress) {
    if (progress == 1.0) {
      return "You’ve successfully completed your goal! Amazing work!";
    } else if (progress >= 0.6) {
      return "Keep it up! You’re on track to complete your goal.";
    } else if (progress >= 0.3) {
      return "You’ve missed a few tasks, but it’s not too late to catch up!";
    } else {
      return "You didn’t complete your goal within the given time, but that’s okay!";
    }
  }

  String _getImage(double progress) {
    if (progress == 1.0) return "assets/image/p2.png";
    if (progress >= 0.6) return "assets/image/p1.png";
    if (progress >= 0.3) return "assets/images/p.png";
    return "assets/images/not_completed.png";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Obx(() {
            final goal = controller.goal.value;
            final progress = goal.progress;

            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image based on progress
                  Image.asset(_getImage(progress), height: 150),
                  const SizedBox(height: 20),

                  // Title
                  Text(
                    _getTitle(progress),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),

                  // Subtitle
                  Text(
                    _getSubtitle(progress),
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  // Progress Bar
                  LinearProgressIndicator(
                    value: progress,
                    color: _getProgressColor(progress),
                    backgroundColor: Colors.grey[800],
                    minHeight: 8,
                  ),
                  const SizedBox(height: 25),

                  // Stats Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStat("🔥", "${goal.missedTasks}", "Missed"),
                      _buildStat("✅", "${goal.completedTasks}", "Completed"),
                      _buildStat("📅", "${goal.daysLeft}", "Days Left"),
                    ],
                  ),
                  const SizedBox(height: 40),

                  // Action Button
                  ElevatedButton(
                    onPressed: () {
                      // Demo: Increment completed tasks
                      if (goal.completedTasks < goal.totalTasks) {
                        controller.updateProgress(
                          goal.completedTasks + 1,
                          goal.missedTasks,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.greenColor,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 40,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      progress == 1.0
                          ? "Share Achievement"
                          : (progress >= 0.6
                                ? "Continue"
                                : progress >= 0.3
                                ? "Recommit to Goal"
                                : "Done"),
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildStat(String emoji, String value, String label) {
    return Column(
      children: [
        Text(emoji, style: const TextStyle(fontSize: 24)),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
    );
  }
}
