import 'package:flutter/widgets.dart';
import 'package:lightcorn/screens/home/Home.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => Home(),
};