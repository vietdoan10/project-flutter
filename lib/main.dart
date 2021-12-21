import 'package:flutter/material.dart';

import 'home_page/nav.dart';
import 'routes.dart';
import 'screens/wellcome/components/body.dart';
import 'screens/wellcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: theme(),
      home: WellcomeScreen(),
      // initialRoute: WellcomeScreen.routeName,
      

      routes: routes,
    );
  }
}

// flutter run --no-sound-null-safety