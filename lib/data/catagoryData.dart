import 'dart:convert';

class Catagory {
  Catagory({
    this.cColor,
    this.cId,
    this.cName,
  });

  String cColor;
  int cId;
  String cName;

  factory Catagory.fromJson(String str) => Catagory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Catagory.fromMap(Map<String, dynamic> json) => Catagory(
        cColor: json["cColor"],
        cId: json["cId"],
        cName: json["cName"],
      );

  Map<String, dynamic> toMap() => {
        "cColor": cColor,
        "cId": cId,
        "cName": cName,
      };
}
