import 'package:get/get.dart';
import '../../data/models/workout_model.dart';

class DiscoverController extends GetxController {
  RxList<WorkoutModel> workoutList = <WorkoutModel>[].obs;

  @override
  void onInit() {
    fetchWorkouts();
    super.onInit();
  }

  void fetchWorkouts() {
    workoutList.value = [
      WorkoutModel(
        title: "Workout Target",
        imageUrl: "https://via.placeholder.com/150",
        startDate: "Sep 20",
        endDate: "Sep 30",
        description: "Lorem ipsum dolor sit amet consectetur...",
      ),
      // Add more items...
    ];
  }
}
