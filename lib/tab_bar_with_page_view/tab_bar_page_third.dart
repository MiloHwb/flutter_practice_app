import 'package:flutter/material.dart';

class TabBarPageThird extends StatefulWidget {
  @override
  _TabBarPageThirdState createState() => _TabBarPageThirdState();
}

class _TabBarPageThirdState extends State<TabBarPageThird> with AutomaticKeepAliveClientMixin {
  final _suggestion = <String>[];
  final _bigFont = TextStyle(fontSize: 18);

  Widget _buildItem(String pair) {
    return ListTile(
      title: Text(
        pair,
        style: _bigFont,
      ),
    );
  }

  generateWordPairs() {
    return [
      "-------",
      "+++++++",
      ")))))))",
      "(((((((",
      "^^^^^^^",
      "********",
      "-------",
      "+++++++",
      ")))))))",
      "(((((((",
      "^^^^^^^",
      "********",
      "-------",
      "+++++++",
      ")))))))",
      "(((((((",
      "^^^^^^^",
      "********",
      "-------",
      "+++++++",
      ")))))))",
      "(((((((",
      "^^^^^^^",
      "********",
    ];
  }

  Widget _buildSuggestion() {
    return ListView.builder(itemBuilder: (context, index) {
      if (index.isOdd) {
        return Divider();
      } else {
        final i = index ~/ 2;
        if (i >= _suggestion.length) {
          _suggestion.addAll(generateWordPairs());
        }
        return _buildItem(_suggestion[i]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _buildSuggestion();
  }

  @override
  bool get wantKeepAlive => true;
}
