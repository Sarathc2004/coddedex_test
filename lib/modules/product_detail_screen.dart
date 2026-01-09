import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text(''),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 12),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _productImage(),
                    const SizedBox(height: 16),
                    _productTitle(),
                    const SizedBox(height: 8),
                    _priceSection(),
                    const SizedBox(height: 16),
                    _description(),
                    const SizedBox(height: 24),
                    _relatedProducts(),
                  ],
                ),
              ),
            ),
          ),
          _addToCartButton(),
        ],
      ),
    );
  }

  /// Product Image Section
  Widget _productImage() {
    return Stack(
      children: [
        Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Image.network(
            'assets/images/Frame 427320120.png',

            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          right: 12,
          top: 12,
          child: Icon(Icons.favorite_border, color: Colors.grey.shade700),
        ),
      ],
    );
  }

  /// Title & Variant
  Widget _productTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Masoor Dal 1KG',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 4),
        Text('Unpolished Masoor Dal', style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  /// Price & Discount
  Widget _priceSection() {
    return Row(
      children: [
        const Text(
          '₹ 125.00',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        const Text(
          '₹ 135.00',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(
            '14% off',
            style: TextStyle(color: Colors.green, fontSize: 12),
          ),
        ),
        const Spacer(),
        const Icon(Icons.share_outlined),
      ],
    );
  }

  /// Description
  Widget _description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Description', style: TextStyle(fontWeight: FontWeight.w600)),
        SizedBox(height: 8),
        Text(
          'Bag of Green offers premium Strawberries from South Africa, prized '
          'for their vibrant red color, natural sweetness, and juicy texture. '
          'Perfect for snacking, desserts, and smoothies. Freshness guaranteed.',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  /// Related Products
  Widget _relatedProducts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Related Products',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            _relatedProductCard(
              name: 'Chana dal 1KG',
              price: '₹105.00',
              oldPrice: '₹180.00',
              discount: '25% off',
            ),
            const SizedBox(width: 12),
            _relatedProductCard(
              name: 'Roasted Chana 750g',
              price: '₹95.00',
              oldPrice: '₹125.00',
              discount: '24% off',
            ),
          ],
        ),
      ],
    );
  }

  Widget _relatedProductCard({
    required String name,
    required String price,
    required String oldPrice,
    required String discount,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/Frame 427320120.png',
                  height: 80,
                  width: 200,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      discount,
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(name, style: const TextStyle(fontSize: 12)),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  price,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 4),
                Text(
                  oldPrice,
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            SizedBox(
              height: 28,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff6B2C12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Bottom Button
  Widget _addToCartButton() {
    return Container(
      padding: const EdgeInsets.all(12),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff6B2C12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Add To Cart',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
