class GetData {
  List<Data>? data;

  GetData({this.data});

  GetData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? itemCode;
  String? itemName;
  String? price;
  String? stock;

  Data({this.id, this.itemCode, this.itemName, this.price, this.stock});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemCode = json['item_code'];
    itemName = json['item_name'];
    price = json['price'];
    stock = json['stock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['item_code'] = this.itemCode;
    data['item_name'] = this.itemName;
    data['price'] = this.price;
    data['stock'] = this.stock;
    return data;
  }
}