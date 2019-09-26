import 'package:flutter/material.dart';

///参考代码：https://github.com/CarGuo/TabBarWithPageView
class HWBTabBar extends StatefulWidget {
  static const int BOTTOM_TAB = 0;
  static const int TOP_TAB = 1;
  final int type;
  final List<Widget> tabItems;
  final List<Widget> tabViews;
  final Color backgroundColor;
  final Color indicatorColor;
  final Widget title;
  final Widget drawer;
  final Widget floatingActionButton;
  final TarWidgetControl tarWidgetControl;
  final PageController topPageControl;

  HWBTabBar(
      {Key key,
      this.type,
      this.tabItems,
      this.tabViews,
      this.backgroundColor,
      this.indicatorColor,
      this.title,
      this.drawer,
      this.floatingActionButton,
      this.tarWidgetControl,
      this.topPageControl})
      : super(key: key);

  @override
  _HWBTabBarState createState() => _HWBTabBarState(type, tabItems, tabViews, backgroundColor,
      indicatorColor, title, drawer, floatingActionButton, topPageControl);
}

class _HWBTabBarState extends State<HWBTabBar> with SingleTickerProviderStateMixin {
  TabController _tabController;

  int _type;
  List<Widget> _tabItems;
  List<Widget> _tabViews;
  Color _backgroundColor;
  Color _indicatorColor;
  Widget _title;
  Widget _drawer;
  FloatingActionButton _floatingActionButton;
  PageController _pageControl;

  _HWBTabBarState(
      this._type,
      this._tabItems,
      this._tabViews,
      this._backgroundColor,
      this._indicatorColor,
      this._title,
      this._drawer,
      this._floatingActionButton,
      this._pageControl);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabItems.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //顶部tabBar
    if (_type == HWBTabBar.TOP_TAB) {
      return Scaffold(
        //侧滑菜单，不需要可以不设置
        drawer: _drawer,
        //悬浮键，不需要可以不设置
        floatingActionButton: _floatingActionButton,
        //标题栏
        appBar: AppBar(
          backgroundColor: _backgroundColor,
          title: _title,
          //顶部时，tabBar为可以滑动的模式
          bottom: TabBar(
            isScrollable: true,
            //必须有的控制器，与PageView的控制器同步
            controller: _tabController,
            //每一个tab
            tabs: _tabItems,
            indicatorColor: _indicatorColor,
          ),
        ),
        //页面主题，PageView，用来承载Tab对应的页面
        body: PageView(
          //必须有的控制器，与tabBar的控制器同步
          controller: _pageControl,
          //每个tab对应的页面
          children: _tabViews,
          //页面触摸作用滑动回调，用于同步tab的选中状态
          onPageChanged: (index) {
            _tabController.animateTo(index);
          },
        ),
      );
    } else {
      //底部tabBar
      return Scaffold(
        drawer: _drawer,
        floatingActionButton: _floatingActionButton,
        appBar: AppBar(
          backgroundColor: _backgroundColor,
          title: _title,
        ),
        //页面主体
        body: PageView(
          //必须有的控制器，与tabBar的控制器同步
          controller: _pageControl,
          //每个tab对应的页面
          children: _tabViews,
          //页面触摸作用滑动回调，用于同步tab的选中状态
          onPageChanged: (index) {
            _tabController.animateTo(index);
          },
        ),
        //底部导航栏，也就是tab栏
        bottomNavigationBar: Material(
          color: _backgroundColor,
          //tabBar控件
          child: TabBar(
            //每一个tab
            tabs: _tabItems,
            //必须有的控制器，与PageView的控制器同步
            controller: _tabController,
            //tab底部选中条颜色
            indicatorColor: _indicatorColor,
          ),
        ),
      );
    }
  }
}

class TarWidgetControl {
  List<Widget> footerButton = [];
}
