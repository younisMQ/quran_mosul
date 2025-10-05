import 'package:flutter/material.dart';
import 'package:quran_mosul/hadith/hadithdetailsscreen.dart';
import 'package:quran_mosul/homescreen.dart';
import 'package:quran_mosul/mythemdata.dart';
import 'package:quran_mosul/sora/soradetailsscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.routName,
      routes: {
        Homescreen.routName: (context) => Homescreen(),
        SoraDetailsScreen.routName: (context) => SoraDetailsScreen(),
        HadithDetailsScreen.routName: (context) => HadithDetailsScreen(),
      },
      theme: MyThemData.lightMode,
    );
  }
}
