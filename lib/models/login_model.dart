// lib/features/auth/data/models/login_response.dart
class LoginResponse {
  final bool success;
  final String message;
  final CustomerData? customerData;

  LoginResponse({
    required this.success,
    required this.message,
    this.customerData,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      success: json['success'] == 1,
      message: json['message'] ?? '',
      customerData: json['customerdata'] != null
          ? CustomerData.fromJson(json['customerdata'])
          : null,
    );
  }
}

class CustomerData {
  final String id;
  final String name;
  final String email;
  final String mobile;
  final String? referee;
  final String referralCode;
  final int status;
  final String token;
  final int otpVerificationStatus;
  final int emailVerificationStatus;

  CustomerData({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    this.referee,
    required this.referralCode,
    required this.status,
    required this.token,
    required this.otpVerificationStatus,
    required this.emailVerificationStatus,
  });

  factory CustomerData.fromJson(Map<String, dynamic> json) {
    return CustomerData(
      id: json['id']?.toString() ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      mobile: json['mobile']?.toString() ?? '',
      referee: json['referee'],
      referralCode: json['referral_code'] ?? '',
      status: json['status'] ?? 0,
      token: json['token'] ?? '',
      otpVerificationStatus: json['otpverificationstatus'] ?? 0,
      emailVerificationStatus: json['emailverificationstatus'] ?? 0,
    );
  }
}
