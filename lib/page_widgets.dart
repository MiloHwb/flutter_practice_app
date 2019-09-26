import 'package:flutter/material.dart';

import 'layout_widgets.dart';

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('DemoPage'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ExpandedDemo2();
        },
        itemCount: 20,
      ),
    );
  }
}
