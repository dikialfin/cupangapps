import 'dart:convert';
import 'package:cupang_apps/models/cupang_model.dart';
import 'package:cupang_apps/data/cupang.dart';
import 'package:flutter/services.dart';

class CupangService {
  List<CupangModel> getDataIkan() {
    List<CupangModel> listCupang = [];
    for (var data in resource["data_ikan"]) {
      listCupang.add(CupangModel.fromJson(data));
    }
    return listCupang;
  }
}
