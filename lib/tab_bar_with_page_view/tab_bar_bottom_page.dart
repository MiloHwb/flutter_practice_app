import 'package:flutter/material.dart';
import 'package:flutter_practice_app/tab_bar_with_page_view/tab_bar_widget.dart';

import 'tab_bar_page_first.dart';
import 'tab_bar_page_second.dart';
import 'tab_bar_page_third.dart';

class TabBarBottomPageWidget extends StatefulWidget {
  @override
  _TabBarBottomPageState createState() => _TabBarBottomPageState();
}

class _TabBarBottomPageState extends State<TabBarBottomPageWidget> {
  final PageController _pageController = PageController();
  final List<String> tabs = ['动态', '趋势', '我的'];

  ///渲染tab
  List<Widget> _renderTab() {
    List<Widget> list = [];
    for (int i = 0; i < tabs.length; i++) {
      list.add(FlatButton(
        onPressed: () {
          //这两种方式都可以，个人觉得第一种方式更好一点
//          _pageController.jumpToPage(i);
          _pageController.jumpTo(MediaQuery.of(context).size.width * i);
        },
        child: Text(
          tabs[i],
          maxLines: 1,
        ),
      ));
    }
    return list;
  }

  ///渲染tab对应的page
  List<Widget> _renderPage() {
    return [
      TabBarPageFirst(),
      TabBarPageSecond(),
      TabBarPageThird(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HWBTabBar(
      type: HWBTabBar.BOTTOM_TAB,
      tabItems: _renderTab(),
      tabViews: _renderPage(),
      backgroundColor: Colors.blue,
      topPageControl: _pageController,
      indicatorColor: Colors.white,
      title: Text('HWBFlutter'),
    );
  }
}
