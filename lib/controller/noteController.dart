import 'package:get/get.dart';
import 'package:writeitup/data/noteData.dart';
// ignore: unused_import

import 'package:writeitup/helpers/helpingRequests.dart';

HelpingRequest helpers = HelpingRequest();

class NoteController extends GetxController {
  NoteData notes;

  NoteController() {
    helpers.getAllNotes().then((value) {
      notes = value;
      update();
    });
  }
}
