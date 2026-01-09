// lib/features/auth/presentation/controllers/login_controller.dart
import 'package:codeedex_task/services/auth_service.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  final AuthService _authService = AuthService();

  final emailPhoneController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  bool _obscurePassword = true;
  bool get obscurePassword => _obscurePassword;

  // Add fields for id and token
  String? id;
  String? token;

  void togglePasswordVisibility() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  Future<bool> login(BuildContext context) async {
    _errorMessage = null;
    _isLoading = true;
    notifyListeners();

    try {
      final response = await _authService.login(
        emailOrPhone: emailPhoneController.text.trim(),
        password: passwordController.text,
      );

      if (response.success && response.customerData != null) {
        // Store id and token
        id = response.customerData!.id;
        token = response.customerData!.token;

        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Login Successful!')));

        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        _errorMessage = response.message.isNotEmpty
            ? response.message
            : 'Login failed. Please check your credentials.';
      }
    } catch (e) {
      _errorMessage = e.toString().replaceFirst('Exception: ', '');
    }

    _isLoading = false;
    notifyListeners();
    return false;
  }

  void clearError() {
    if (_errorMessage != null) {
      _errorMessage = null;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    emailPhoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
