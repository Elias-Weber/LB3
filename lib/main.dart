import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lb3/screens/home_screen.dart';
import 'package:lb3/screens/screen_2.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

void main() async {
  await Hive.initFlutter();

  var _myAuftrag = await Hive.openBox("myAuftrag");
  var _myAuftragNR = await Hive.openBox("myAuftragNR");


_myAuftragNR.clear();
_myAuftrag.clear();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
