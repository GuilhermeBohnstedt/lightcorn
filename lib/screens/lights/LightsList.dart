import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:magic_home/magic_home.dart';

// You can pass any object to the arguments parameter.
// In this example, create a class that contains both
// a customizable title and message.
class LightsListArguments {
  final List<Light> lights;

  LightsListArguments(this.lights);
}

class LightsList extends StatelessWidget {
  static const routeName = '/light-list';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
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
            );
          })
        ],
      ),
    );
  }
}
