import 'package:flutter/material.dart';
import 'package:flutter_practice_app/page_widgets.dart';

import 'layout_widgets.dart';

void main() {
//  runApp(LayoutWidget());
  runApp(PageWidget());
}

class LayoutWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LayoutWidget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
//        body: DemoWidget(),
//        body: DemoStateWidget(),
//        body: ContainerDemo(),
//        body: ColumnDemo(),
//        body: ExpandedDemo(),
        body: ExpandedDemo2(),
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageWidget Demo',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: DemoPage(),
    );
  }
}
