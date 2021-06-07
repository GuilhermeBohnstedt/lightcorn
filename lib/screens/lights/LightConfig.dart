import 'package:flutter/material.dart';
import 'package:lightcorn/components/PulsatingCircleIconButton.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:magic_home/magic_home.dart';

class LightConfigArguments {
  final Light light;

  LightConfigArguments(this.light);
}

class LightConfig extends StatelessWidget {
  static const routeName = '/light';

  handleToggleLight(Light light) {
    light.setPower(!light.power);
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as LightConfigArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Light List'),
      ),
      body: ListView(
        children: <Widget>[
          PulsatingCircleIconButton(
              onTap: () {
                handleToggleLight(args.light);
              },
              icon: Icon(
                Icons.lightbulb,
                color: Colors.yellow,
              )),
        ],
      ),
    );
  }
}
