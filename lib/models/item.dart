enum Type { boolean, number, range, text, image }

class Item {
  Type type;
  String title;
  double maxValueDouble;
  double minValueDouble;
  int maxValueInt;
  int minValueInt;
  bool itsRequired;

  Item(
      {this.type,
      this.title,
      this.maxValueDouble,
      this.minValueDouble,
      this.maxValueInt,
      this.minValueInt,
      this.itsRequired});
}


Item dummyItemBool = Item(
  title: 'A simple bool element',
  type: Type.boolean,
);

Item dummyItemText = Item(
  title: 'A simple text element',
  type: Type.text,
  maxValueInt: 30,

);
