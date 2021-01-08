import 'dart:convert';

class NoteData {
  NoteData({
    this.nCatagory,
    this.nDate,
    this.nId,
    this.nNote,
    this.nTitle,
  });

  int nCatagory;
  String nDate;
  int nId;
  String nNote;
  String nTitle;

  factory NoteData.fromJson(String str) => NoteData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NoteData.fromMap(Map<String, dynamic> json) => NoteData(
        nCatagory: json["nCatagory"],
        nDate: json["nDate"],
        nId: json["nId"],
        nNote: json["nNote"],
        nTitle: json["nTitle"],
      );

  Map<String, dynamic> toMap() => {
        "nCatagory": nCatagory,
        "nDate": nDate,
        "nId": nId,
        "nNote": nNote,
        "nTitle": nTitle,
      };
}
