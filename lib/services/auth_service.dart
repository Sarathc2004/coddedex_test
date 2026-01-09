// lib/features/auth/data/services/auth_service.dart
import 'dart:convert';
import 'package:codeedex_task/models/login_model.dart';
import 'package:codeedex_task/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<LoginResponse> login({
    required String emailOrPhone,
    required String password,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Accept': 'application/json',
        },
        body: {'email_phone': emailOrPhone.trim(), 'password': password},
      );
      debugPrint('Login API Status Code: ${response.statusCode}');
      debugPrint('Login API Response: ${response.body}');

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        return LoginResponse.fromJson(jsonData);
      } else {
        throw Exception('Server error: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }
}
