
import 'package:flutter/services.dart';
import 'package:insaf_multiparpas/models/claint_model.dart';

class ClaintRepo{
  static Future<List<ClaintModel>>  claintList() async {
    final response = await rootBundle.loadString('assets/json/claint_list.json');
    if (response== null){
      return [];
    } else { List<ClaintModel> users = claintModelFromJson(response);
    return users;}
    
  }
}