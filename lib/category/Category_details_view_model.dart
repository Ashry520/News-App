import 'package:flutter/material.dart';
import 'package:newsapp/model/SourceResponse.dart';
import 'package:newsapp/model/api_manager.dart';

class CategoryDetailsViewModel extends ChangeNotifier {
  List<Sources>? sourceList;
  String? errorMessage;

  void getSourceByCategory(String categoryId) async {
    sourceList = null;
    errorMessage = null;
    notifyListeners();
    try {
      var response = await ApiManager.getSources(categoryId);
      if (response.status == 'error') {
        errorMessage = response.message;
      } else {
        sourceList = response.sources;
      }
    } catch (e) {
      errorMessage = 'Error Loading Source List';
    }
    notifyListeners();
  }
}
