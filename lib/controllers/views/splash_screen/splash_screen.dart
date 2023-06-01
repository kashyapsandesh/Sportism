import 'package:footgoal/const/exports/exports.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        Get.to(() => HomeScreen());
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            15.heightBox,
            SizedBox(
                height: 250,
                width: double.infinity,
                child: const SportismLogo()),
            appName.text.size(36).fontFamily(atlanta).gray100.make(),
          ],
        ),
      ),
    );
  }
}
