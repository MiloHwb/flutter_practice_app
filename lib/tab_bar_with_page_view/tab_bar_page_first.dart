import 'package:flutter/material.dart';

class TabBarPageFirst extends StatefulWidget {
  @override
  _TabBarPageFirstState createState() => _TabBarPageFirstState();
}

class _TabBarPageFirstState extends State<TabBarPageFirst> with AutomaticKeepAliveClientMixin{
  final _suggestions = <String>[];

  final _bigFont = const TextStyle(fontSize: 18);

  ///构建条目
  Widget _buildItem(String pair) {
    return ListTile(
      title: Text(
        pair,
        style: _bigFont,
      ),
    );
  }

  _generateWordPair() {
    return [
      "11111",
      "222222",
      "3333333",
      "4444444",
      "11111",
      "222222",
      "3333333",
      "4444444",
      "11111",
      "222222",
      "3333333",
      "4444444",
      "11111",
      "222222",
      "3333333",
      "4444444"
    ];
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        //如果是奇数就返回分割线
        if (index.isOdd) {
          return Divider();
        } else {
          //偶数
          final i = index ~/ 2;
          //如果是建议列表的最后一个单词对
          if (i >=_suggestions.length) {
            _suggestions.addAll(_generateWordPair());
          }
          return _buildItem(_suggestions[i]);
        }
      },
      padding: const EdgeInsets.all(16),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);//AutomaticKeepAliveClientMixin要求必须调用
    return _buildSuggestions();
  }

  @override
  bool get wantKeepAlive => true;

}
