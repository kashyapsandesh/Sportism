import 'package:footgoal/const/exports/exports.dart';

import '../category_screen/cricket/cricket_screen.dart';
import '../category_screen/football/football_screen.dart';
import '../category_screen/volleyball/volleyball_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(FootballController());
    var nabBarItem = [
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.sports_football,
            size: 24,
          ),
          label: football),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.sports_volleyball,
            size: 24,
          ),
          label: volleyball),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.sports_cricket,
            size: 24,
          ),
          label: cricket),
    ];
    var navBody = [
      FootballScreen(),
      VolleyballScreen(),
      CricketScreen(),
    ];
    return Center(
      child: Scaffold(
        body: Column(
          children: [
            Obx(() => Expanded(
                child: navBody.elementAt(controller.currentNavIndex.value))),
          ],
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              items: nabBarItem,
              currentIndex: controller.currentNavIndex.value,
              selectedItemColor: background,
              selectedLabelStyle: TextStyle(fontFamily: semibold),
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              onTap: (value) {
                controller.currentNavIndex.value = value;
              },
            )),
      ),
    );
  }
}
