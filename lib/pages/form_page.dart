import 'package:advanced_report_app/models/item.dart';
import 'package:advanced_report_app/models/providers/itemData.dart';
import 'package:advanced_report_app/widgets/items_widgets.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  static String id = "FormPage";

  List<Widget> buildForm() {
    ItemListProvider formProvider = ItemListProvider();
    List<Item> items = formProvider.getListItems();
    List<Widget> form = [];
    for (var item in items) {
      switch (item.type) {
        case Type.boolean:
          form.add(BoolItem(item: item));
          break;
        case Type.text:
          form.add(TextItem(item: item));
          break;
        default:
          break;
      }
    }
    return form;
  }

  @override
  Widget build(BuildContext context) {
    final form = buildForm();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: form,
          // children: [
          //   BoolItem(item: dummyItemBool),
          //   TextItem(item: dummyItemText)
          // ],
        ),
      ),
    );
  }
}
