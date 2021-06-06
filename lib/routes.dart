import 'package:flutter/widgets.dart';
import 'package:lightcorn/screens/home/Home.dart';
import 'package:lightcorn/screens/lights/LightsList.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  Home.routeName: (BuildContext context) => Home(),
  LightsList.routeName: (BuildContext context) => LightsList(),
};