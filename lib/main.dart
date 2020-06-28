import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';
import 'package:flutter/widgets.dart';
import 'screens/store_page.dart';
import 'screens/item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      // home: LandingScreen(),
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => LandingScreen(),
        StorePage.id: (context) => StorePage(),
        ItemPage.id: (context) => ItemPage(),
      },
    );
  }
}
