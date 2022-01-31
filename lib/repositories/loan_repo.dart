import 'package:flutter/services.dart';
import 'package:insaf_multiparpas/models/loan_model.dart';

class LoanRepo {
  static Future<List<LoanModel>> loanList() async {
    final response =
        await rootBundle.loadString('assets/json/loan_list.json');
    if (response == null) {
      return [];
    } else {
      List<LoanModel> users = loanModelFromJson(response);
      return users;
    }
  }
}
