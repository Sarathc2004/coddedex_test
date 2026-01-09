// import 'package:codeedex_task/models/product_model.dart';
// import 'package:codeedex_task/services/product_service.dart';
// import 'package:flutter/material.dart';

// class ProductController extends ChangeNotifier {
//   final ProductService _service = ProductService();

//   bool isLoading = false;
//   List<Product> products = [];
//   int total = 0;

//   Future<void> loadProducts({
//     required String categoryId,
//     required String token,
//   }) async {
//     isLoading = true;
//     notifyListeners();

//     try {
//       final response = await _service.fetchProducts(
//         categoryId: categoryId,
//         token: token,
//       );

//       if (response.success == 1) {
//         products = response.products.productData.data;
//         total = response.products.productData.total;
//       } else {
//         debugPrint('API Error: ${response.message}');
//       }
//     } catch (e) {
//       debugPrint('Error fetching products: $e');
//     }

//     isLoading = false;
//     notifyListeners();
//   }
// }
