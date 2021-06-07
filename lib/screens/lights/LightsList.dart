import 'package:flutter/material.dart';
import 'package:lightcorn/screens/lights/LightConfig.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:magic_home/magic_home.dart';

class LightsListArguments {
  final List<Light> lights;

  LightsListArguments(this.lights);
}

class LightsList extends StatefulWidget {
  static const routeName = '/light-list';

  @override
  _LightsListState createState() => _LightsListState();
}

class _LightsListState extends State<LightsList> {

  handleClickItem(Light light) {
    Navigator.pushNamed(
      context,
      LightsList.routeName,
      arguments: LightConfigArguments(light),
    );
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as LightsListArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Light List'),
      ),
      body: ListView(
        children: <Widget>[
          ...args.lights.map((e) {
            return ListTile(
              leading: Icon(Icons.lightbulb),
              title: Text(e.address),
              onTap: () {
                handleClickItem(e);
              },
            );
          })
        ],
      ),
    );
  }
}
