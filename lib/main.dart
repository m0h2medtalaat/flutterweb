import 'package:flutter/material.dart';
import 'package:flutter_app_web/screens/home_screen.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      builder: () => MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
