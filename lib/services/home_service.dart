import 'dart:convert';
import 'package:codeedex_task/utils/constants.dart';
import 'package:flutter/foundation.dart';
import '../models/home_model.dart';
import 'package:http/http.dart' as http;

class HomeService {
  Future<HomeModel> fetchHome({
    required String id,
    required String token,
  }) async {
    final uri = Uri.parse('$baseUrl/home?id=$id&token=$token');

    debugPrint('Home API URL: $uri');

    final response = await http.get(uri);

    debugPrint('Home API Response: ${response.body}');

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return HomeModel.fromJson(jsonData);
    } else {
      throw Exception('Failed to load home data: ${response.statusCode}');
    }
  }
}
