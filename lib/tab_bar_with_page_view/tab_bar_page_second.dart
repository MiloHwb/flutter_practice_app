import 'package:flutter/material.dart';

class TabBarPageSecond extends StatefulWidget {
  @override
  _TabBarPageSecondState createState() => _TabBarPageSecondState();
}

class _TabBarPageSecondState extends State<TabBarPageSecond> with AutomaticKeepAliveClientMixin {
  final _suggestions = <String>[];

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
      "yyyyyyy",
      "uuuuuuu",
      "iiiiiii",
      "ooooooo",
      "ppppppp",
      "yyyyyyy",
      "uuuuuuu",
      "iiiiiii",
      "ooooooo",
      "ppppppp",
      "yyyyyyy",
      "uuuuuuu",
      "iiiiiii",
      "ooooooo",
      "ppppppp",
    ];
  }

  Widget _buildSuggestions() {
    return ListView.builder(itemBuilder: (context, index) {
      if (index.isOdd) {
        return Divider();
      } else {
        final i = index ~/ 2;
        if (i >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs());
        }
        return _buildItem(_suggestions[i]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _buildSuggestions();
  }

  @override
  bool get wantKeepAlive => true;
}
