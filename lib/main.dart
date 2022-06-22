import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants/app_theme.dart';
import 'ui/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: CustomTheme().buildDarkTheme(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
