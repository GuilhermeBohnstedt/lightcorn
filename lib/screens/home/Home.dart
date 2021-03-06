import 'package:flutter/material.dart';
import 'package:lightcorn/components/RippleAnimation.dart';
import 'package:lightcorn/screens/lights/LightsList.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:magic_home/magic_home.dart';

class Home extends StatefulWidget {
  static const routeName = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _scanning = false;

  @override
  void initState() {
    super.initState();
    LightDiscovery.timeout = 3000;
  }

  handleClickScan() {
    setState(() {
      if (!_scanning) {
        _scanning = true;
        LightDiscovery.discover().then((value) {
          setState(() {
            this._scanning = false;
          });
          Navigator.pushNamed(
            context,
            LightsList.routeName,
            arguments: LightsListArguments(value),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LightCorn'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RipplesAnimation(
                color: Colors.indigo,
                animate: _scanning,
                child: RawMaterialButton(
                  onPressed: handleClickScan,
                  elevation: 5.0,
                  fillColor: Colors.white,
                  child: Text(
                    _scanning ? 'Scanning' : 'Start Scan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  padding: EdgeInsets.all(80.0),
                  shape: CircleBorder(),
                )),
          ],
        ),
      ),
    );
  }
}
