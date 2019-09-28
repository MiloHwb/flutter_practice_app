import 'package:flutter/material.dart';

class TabBarPageForth extends StatefulWidget {
  @override
  _TabBarPageForthState createState() => _TabBarPageForthState();
}

class _TabBarPageForthState extends State<TabBarPageForth> with AutomaticKeepAliveClientMixin {
  final _suggestions = <String>[];

  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildRow(String pair) {
    return new ListTile(
      title: new Text(
        pair,
        style: _biggerFont,
      ),
    );
  }

  generateWordPairs() {
    return [
      "First",
      "Second",
      "Three",
      "Four",
      "111111",
      "222222",
      "333333",
      "444444",
      "First",
      "Second",
      "Three",
      "Four",
      "111111",
      "222222",
      "333333",
      "444444",
      "First",
      "Second",
      "Three",
      "Four",
      "111111",
      "222222",
      "333333",
      "444444",
      "First",
      "Second",
      "Three",
      "Four",
      "111111",
      "222222",
      "333333",
      "444444",
    ];
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return new Divider();
          final index = i ~/ 2;
          // 如果是建议列表中最后一个单词对
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs());
          }
          return _buildRow(_suggestions[index]);
        });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context); // See AutomaticKeepAliveClientMixin.
    return _buildSuggestions();
  }
}
