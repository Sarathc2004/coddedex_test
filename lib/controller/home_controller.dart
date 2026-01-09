import 'package:flutter/material.dart';
import '../models/home_model.dart';
import '../services/home_service.dart';

class HomeController extends ChangeNotifier {
  final HomeService _service = HomeService();

  bool isLoading = false;
  HomeModel? homeData;
  String? error;

  Future<void> loadHome({required String id, required String token}) async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      homeData = await _service.fetchHome(id: id, token: token);
    } catch (e) {
      error = e.toString();
      debugPrint('Home API Error: $e');
    }

    isLoading = false;
    notifyListeners();
  }
}
