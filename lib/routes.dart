import 'package:flutter/widgets.dart';
import 'package:medical_app/log_in/log_in.dart';

import 'home_page/nav.dart';
import 'screens/wellcome/components/body.dart';
import 'screens/wellcome/welcome_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
    Nav.routeName: (ctx) => Nav(),
    LoginPage.routeName: (ctx) => LoginPage(),
    
  
};