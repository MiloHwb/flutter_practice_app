import 'package:flutter/material.dart';

class ExpandedDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: FlatButton(
          onPressed: () {
            print('点击');
          },
          child: Padding(
            padding: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: Text(
                    '这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述这是描述',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(top: 6, bottom: 2),
                  alignment: Alignment.topLeft,
                ),
                Padding(padding: EdgeInsets.only(top: 6, bottom: 2)),
                Row(
                  children: <Widget>[
                    _getBottomItem(Icons.star, '1000'),
                    _getBottomItem(Icons.link, '1000'),
                    _getBottomItem(Icons.subject, '1000'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Expanded _getBottomItem(IconData icon, String text) {
  return Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 16,
          color: Colors.grey,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey, fontSize: 14),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    ),
  );
}

class ExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Text('six six six'),
          flex: 1,
        ),
        Expanded(
          child: Text('666'),
          flex: 1,
        ),
        Text('吊吊吊'),
      ],
    );
  }
}

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[Text('666'), Text('Six Six Six')],
      ),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 120,
      width: 500,
//      color: Colors.green,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
//        color: Colors.black,
        border: Border.all(color: Colors.red, width: 0.3),
      ),
      child: Text('six six six'),
    );
  }
}

class DemoStateWidget extends StatefulWidget {
  final String text;

  DemoStateWidget({this.text});

  @override
  _DemoStateWidgetState createState() => _DemoStateWidgetState(text);
}

class _DemoStateWidgetState extends State<DemoStateWidget> {
  String text;

  _DemoStateWidgetState(this.text);

  @override
  void initState() {
    super.initState();
    print('initState');
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        text = '改变自我';
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text ?? '这是有状态的Demo'),
    );
  }
}

class DemoWidget extends StatelessWidget {
  final String title;

  DemoWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text(title ?? 'StatelessWidget'),
      height: 200,
    );
  }
}
