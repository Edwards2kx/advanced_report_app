import 'package:advanced_report_app/models/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class BaseCard extends StatelessWidget {
  final double _cardElevation = 4.0;
  final _internalCardPadding = const EdgeInsets.all(20.0);
  final _cardMargin = const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 8.0);
  final Widget child;

  const BaseCard({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: _cardMargin,
      elevation: _cardElevation,
      color: Colors.white,
      child: Container(
        padding: _internalCardPadding,
        child: child,),
      
    );
  }
}

class BoolItem extends StatefulWidget {
  final Item item;

  const BoolItem({Key key, this.item}) : super(key: key);
  @override
  _BoolItemState createState() => _BoolItemState();
}

class _BoolItemState extends State<BoolItem> {
  bool _itemValue = false;

  @override
  Widget build(BuildContext context) {
    Item item = widget.item;

    return BaseCard(
      child: Container(
//        padding: internalCardPadding,
        child: Row(
          children: [
            Expanded(flex: 6, child: Text(item.title)),
            Expanded(
              flex: 1,
              child: CupertinoSwitch(
                value: _itemValue,
                onChanged: (v) {
                  setState(() {
                    _itemValue = v;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextItem extends StatefulWidget {
  final Item item;

  const TextItem({Key key, this.item}) : super(key: key);
  @override
  _TextItemState createState() => _TextItemState();
}

class _TextItemState extends State<TextItem> {
  String _itemValue;
  String buttomAction = 'Editar';
  bool itsEditing = false;

  @override
  Widget build(BuildContext context) {
    Item item = widget.item;
    return BaseCard(
      child: Container(
        //padding: internalCardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.title),
            TextField(
              keyboardType: TextInputType.multiline,
              minLines: 4,
              maxLines: null,
              maxLength: item.maxValueInt,
              enabled: itsEditing,
              decoration: InputDecoration(
//                border: Border
                  ),
              onChanged: (v) {
                _itemValue = v;
              },
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(itsEditing?'Stop editting':'Edit'),
                SizedBox(width: 10.0,),
                CupertinoSwitch(
                  value: itsEditing,
                  onChanged: (v) {
                    setState(() {
                      itsEditing = v;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
