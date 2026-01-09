import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample product data
    final products = [
      Product(
        name: "Chana dal 1KG",
        image: "assets/images/Frame 427320120.png",
        price: 105,
        originalPrice: 80,
        discount: 22,
        hasQuantitySelector: true,
      ),
      Product(
        name: "Roasted Chana 750g",
        image: "assets/images/Frame 427320120.png",
        price: 95,
        originalPrice: 125,
        discount: 24,
      ),
      Product(
        name: "Toor Dal 1KG",
        image: "assets/images/Frame 427320120.png",
        price: 153,
        originalPrice: 210,
        discount: 27,
      ),
      Product(
        name: "Red Chana 1KG",
        image: "assets/images/Frame 427320120.png",
        price: 95,
        originalPrice: 135,
        discount: 26,
      ),
      Product(
        name: "Green Moong 500G",
        image: "assets/images/Frame 427320120.png",
        price: 72,
        originalPrice: 90,
        discount: 20,
      ),
      Product(
        name: "Masoor Dal 1KG",
        image: "assets/images/Frame 427320120.png",
        price: 125,
        originalPrice: 210,
        discount: 40,
      ),
      Product(
        name: "Ground Nuts 500G",
        image: "assets/images/Frame 427320120.png",
        price: 86,
        originalPrice: 105,
        discount: 25,
      ),
      Product(
        name: "Urad Dal 1KG",
        image: "assets/images/Frame 427320120.png",
        price: 150,
        originalPrice: 180,
        discount: 16,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Unpolished Pulses"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.sort, color: Colors.black),
              label: const Text(
                "Sort By",
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.filter_list, color: Colors.black),
              label: const Text(
                "Filter",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String image;
  final double price;
  final double originalPrice;
  final int discount;
  final bool hasQuantitySelector;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.originalPrice,
    required this.discount,
    this.hasQuantitySelector = false,
  });
}

class ProductCard extends StatefulWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Discount Badge
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                "${widget.product.discount}% off",
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            const SizedBox(height: 8),
            // Product Image
            Expanded(
              child: Image.asset(widget.product.image, fit: BoxFit.contain),
            ),
            const SizedBox(height: 8),
            // Product Name
            Text(
              widget.product.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            // Price
            Row(
              children: [
                Text(
                  "₹${widget.product.price.toStringAsFixed(0)}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "₹${widget.product.originalPrice.toStringAsFixed(0)}",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Add or Quantity Selector
            widget.product.hasQuantitySelector
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                          }
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      Text(
                        quantity.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  )
                : SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined, size: 16),
                      label: const Text("Add"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
