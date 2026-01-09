import 'package:codeedex_task/modules/product_detail_screen.dart';
import 'package:codeedex_task/modules/product_list_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),

      /// App Bar
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F3D2E),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset(
            'assets/images/beautiful-unique-logo-design-ecommerce-retail-company_1287271-9935-removebg-preview 1.png',
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 12),
          Icon(Icons.favorite_border, color: Colors.white),
          SizedBox(width: 12),
          Icon(Icons.shopping_cart_outlined, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Offer Banner
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.orange.shade200,
              ),
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/iPhone 16 - 2.png',
                height: 150,
                width: MediaQuery.of(context).size.width,
              ),
            ),

            const SizedBox(height: 20),

            _sectionHeader('Categories'),
            const SizedBox(height: 12),
            _categoryList(),

            const SizedBox(height: 20),
            _sectionHeader('Featured Products'),
            const SizedBox(height: 12),
            _productGrid(),

            const SizedBox(height: 20),
            _sectionHeader('Daily Best Selling'),
            const SizedBox(height: 12),
            _productGrid(),

            const SizedBox(height: 20),

            /// Offer Strip
            Container(
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Power Your Day\nWith Nuts & Dry Fruits',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.purple,
                    ),
                    onPressed: () {},
                    child: const Text('Shop Now'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            _sectionHeader('Recently Added'),
            const SizedBox(height: 12),
            _productGrid(),

            const SizedBox(height: 20),
            _sectionHeader('Popular Products'),
            const SizedBox(height: 12),
            _productGrid(),

            const SizedBox(height: 20),
            _sectionHeader('Trending Products'),
            const SizedBox(height: 12),
            _productGrid(),
          ],
        ),
      ),

      /// Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF0F3D2E),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  /// Section Header
  Widget _sectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Icon(Icons.arrow_forward_ios, size: 14),
      ],
    );
  }

  /// Categories
  Widget _categoryList() {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductListScreen()),
              );
            },
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.green.shade100,
                  child: Image.asset(
                    'assets/images/1761891539.png',
                    height: 30,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Unpolished\nFlours',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Products Grid
  Widget _productGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: .68,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductDetailScreen()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 229, 228, 228),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.favorite_border, size: 18),
                ),
                Center(
                  child: Container(
                    width: 100,
                    height: 150,
                    child: Image.asset(
                      'assets/images/Frame 427320120.png',
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Brown Rice Flour',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Light pink salt 1 kg',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                const Text('₹120 / 500g', style: TextStyle(color: Colors.grey)),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Add '),
                        SizedBox(width: 5),
                        Icon(Icons.shopping_cart),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
