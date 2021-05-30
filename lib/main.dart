import 'package:flutter/material.dart';
import 'package:lightcorn/theme/theme.dart';
import 'package:lightcorn/routes.dart';


void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LightCorn',
      theme: appTheme(),
      routes: routes,
    );
  }
}
