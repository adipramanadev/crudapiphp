class Item {
  final String id;
  final String itemCode;
  final String itemName;
  final String price;
  final String stock;

  Item({
    required this.id,
    required this.itemCode,
    required this.itemName,
    required this.price,
    required this.stock,
  });

  factory Item.fromJson(Map<String, dynamic> j) => Item(
    id: j['id']?.toString() ?? '',
    itemCode: j['item_code']?.toString() ?? '',
    itemName: j['item_name']?.toString() ?? '',
    price: j['price']?.toString() ?? '0',
    stock: j['stock']?.toString() ?? '0',
  );
}

class GetData {
  final List<Item> data;
  GetData({required this.data});

  factory GetData.fromJson(Map<String, dynamic> j) {
    final list = (j['data'] as List? ?? []);
    return GetData(
      data: list.map((e) => Item.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}
