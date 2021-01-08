import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:writeitup/data/catagoryData.dart';
import 'package:writeitup/data/noteData.dart';

class HelpingRequest {
  Future<NoteData> getAllNotes() async {
    var data =
        await http.get('https://obscure-tundra-32018.herokuapp.com/note');
    return NoteData.fromJson(jsonDecode(data.body));
  }

  Future<Catagory> getAllCatagories() async {
    var data =
        await http.get('https://obscure-tundra-32018.herokuapp.com/catagories');
    return Catagory.fromJson(jsonDecode(data.body));
  }

  Future<void> addNewCatagory() async {
    var data = await http.post(
        'https://obscure-tundra-32018.herokuapp.com/catagories',
        body: Catagory().toJson());
  }
}
