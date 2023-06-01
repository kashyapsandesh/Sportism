import 'package:footgoal/const/exports/exports.dart';


void main() {
  runApp(const Sportism());
}

class Sportism extends StatelessWidget {
  const Sportism({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
         scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        
      ),
      home: SplashScreen(),
    );
  }
}
