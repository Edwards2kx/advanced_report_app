
import 'package:advanced_report_app/models/item.dart';



class ItemListProvider {

  List<Item> _items = [
  dummyItemBool,
  dummyItemBool,
  dummyItemText,
  dummyItemText,

];

List<Item> getListItems() {
  return _items;
}

}