class CatelogModal {
  static final items = [
    Item(1, "iPhone 12 Pro", "Apple iPhone 12th genration", 999, "#33505a",
        "http:iamge")
  ];
}

class Item {
  late int id;
  late String name;
  late String desc;
  late num price;
  late String color;
  late String image;

  Item(
      int id, String name, String desc, num price, String color, String image) {
    this.id = id;
    this.name = name;
    this.desc = desc;
    this.price = price;
    this.color = color;
    this.image = image;
  }
}

final products = [
  Item(1, "iPhone 12 Pro", "Apple iPhone 12th genration", 999,
      "http://image.com", "#33505a")
];
