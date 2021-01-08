import 'package:get/get.dart';
import 'package:writeitup/data/catagoryData.dart';
import 'package:writeitup/helpers/helpingRequests.dart';

HelpingRequest helpers = HelpingRequest();

class CatagoryController extends GetxController {
  Catagory catagory;

  CatagoryController() {
    helpers.getAllCatagories().then((value) {
      catagory = value;
      update();
    });
  }
}
