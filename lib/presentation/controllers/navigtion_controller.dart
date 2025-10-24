import 'package:get/get.dart';

import '../pages/common/discover_view.dart';
import '../pages/home/home_view.dart';

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  RxInt selectedIndex = 0.obs;

  final pages = [HomeView(), DiscoverView()];

  void onTapChange(int index) {
    selectedIndex.value = index;
  }
}
