import 'package:flutter/material.dart';
import 'package:lightcorn/components/RippleAnimation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  bool _scanning = false;

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
                child: RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      _scanning = !_scanning;
                    });
                  },
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
                ))
          ],
        ),
      ),
    );
  }
}
