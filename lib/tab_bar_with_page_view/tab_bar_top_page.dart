import 'package:flutter/material.dart';
import 'package:flutter_practice_app/tab_bar_with_page_view/tab_bar_widget.dart';

import 'tab_bar_page_first.dart';
import 'tab_bar_page_forth.dart';
import 'tab_bar_page_second.dart';
import 'tab_bar_page_third.dart';

class TabBarTopPageWidget extends StatefulWidget {
  @override
  _TabBarTopPageWidgetState createState() => _TabBarTopPageWidgetState();
}

class _TabBarTopPageWidgetState extends State<TabBarTopPageWidget> {
  final PageController pageController = PageController();
  final List<String> tabs = [
    "111",
    "222",
    "333",
    "444",
    "555",
    "666",
    "777",
    "888",
    "999",
    "1010",
    "1111",
    "1212",
    "1313",
    "1414",
    "!515",
    "1616"
  ];

  List<Widget> _renderTab() {
    List<Widget> list = [];
    for (int i = 0; i < tabs.length; i++) {
      list.add(FlatButton(
        onPressed: () {
          //两种方式都可以进行跳转
//          pageController.jumpTo(MediaQuery.of(context).size.width * i);
          pageController.jumpToPage(i);
        },
        child: Text(tabs[i]),
      ));
    }
    return list;
  }

  List<Widget> _renderPage() {
    return [
      TabBarPageFirst(),
      TabBarPageSecond(),
      TabBarPageThird(),
      TabBarPageForth(),
      TabBarPageFirst(),
      TabBarPageSecond(),
      TabBarPageThird(),
      TabBarPageForth(),
      TabBarPageFirst(),
      TabBarPageSecond(),
      TabBarPageThird(),
      TabBarPageForth(),
      TabBarPageFirst(),
      TabBarPageSecond(),
      TabBarPageThird(),
      TabBarPageForth(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HWBTabBar(
      type: HWBTabBar.TOP_TAB,
      tabItems: _renderTab(),
      tabViews: _renderPage(),
      topPageControl: pageController,
      backgroundColor: Colors.lightBlue,
      indicatorColor: Colors.white,
      title: Text('Test'),
    );
  }
}
