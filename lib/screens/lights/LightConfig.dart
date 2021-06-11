import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:lightcorn/components/PulsatingCircleIconButton.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:magic_home/magic_home.dart' as MagicHome;

class LightConfigArguments {
  final MagicHome.Light light;

  LightConfigArguments(this.light);
}

class LightConfig extends StatelessWidget {
  static const routeName = '/light';

  handleToggleLight(MagicHome.Light light) {
    light.setPower(!light.power);
  }

  handleChangeColor(MagicHome.Light light, Color color) {
    light.setColor(MagicHome.Color(color.red, color.green, color.blue));
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as LightConfigArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Light Configuration'),
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
          ColorPicker(
              onColorChanged: (color) => handleChangeColor(args.light, color))
        ],
      ),
    );
  }
}
