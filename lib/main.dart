import 'package:flutter/material.dart';
import 'package:flutter_practice_app/page_widgets.dart';

import 'layout_widgets.dart';
import 'tab_bar_with_page_view/tab_bar_bottom_page.dart';
import 'tab_bar_with_page_view/tab_bar_top_page.dart';

void main() {
//  runApp(LayoutWidget());
//  runApp(PageWidget());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => TabBarTopPageWidget()));
            },
            color: Colors.blue,
            child: Text('Top Tab'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TabBarBottomPageWidget()));
            },
            color: Colors.blue,
            child: Text('Bottom Tab'),
          ),
        ],
      ),
    );
  }
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
