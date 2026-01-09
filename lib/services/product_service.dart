import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<ProductResponse> fetchProducts({
    required String categoryId,
    required String token,
  }) async {
    final uri = Uri.parse('https://sungod.demospro2023.in.net/api/products/en')
        .replace(
          queryParameters: {'id': categoryId, 'token': token, 'by': 'category'},
        );

    debugPrint('Products API URL: $uri');

    final response = await http.get(uri);

    debugPrint('Products API Response: ${response.body}');

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return ProductResponse.fromJson(jsonData);
    } else {
      throw Exception('Failed to fetch products: ${response.statusCode}');
    }
  }
}
