// product_model.dart
class ProductResponse {
  final int success;
  final String message;
  final Products products;

  ProductResponse({
    required this.success,
    required this.message,
    required this.products,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      ProductResponse(
        success: json['success'],
        message: json['message'],
        products: Products.fromJson(json['products']),
      );

  Map<String, dynamic> toJson() => {
    'success': success,
    'message': message,
    'products': products.toJson(),
  };
}

class Products {
  final ProductData productData;
  final List<dynamic> categories;
  final List<dynamic> newProducts;

  Products({
    required this.productData,
    required this.categories,
    required this.newProducts,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    productData: ProductData.fromJson(json['return']),
    categories: json['categories'] ?? [],
    newProducts: json['new_products'] ?? [],
  );

  Map<String, dynamic> toJson() => {
    'return': productData.toJson(),
    'categories': categories,
    'new_products': newProducts,
  };
}

class ProductData {
  final int currentPage;
  final List<Product> data;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final String lastPageUrl;
  final List<Link> links;
  final String? nextPageUrl;
  final String path;
  final int perPage;
  final String? prevPageUrl;
  final int to;
  final int total;

  ProductData({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
    currentPage: json['current_page'],
    data: List<Product>.from(json['data'].map((x) => Product.fromJson(x))),
    firstPageUrl: json['first_page_url'],
    from: json['from'],
    lastPage: json['last_page'],
    lastPageUrl: json['last_page_url'],
    links: List<Link>.from(json['links'].map((x) => Link.fromJson(x))),
    nextPageUrl: json['next_page_url'],
    path: json['path'],
    perPage: json['per_page'],
    prevPageUrl: json['prev_page_url'],
    to: json['to'],
    total: json['total'],
  );

  Map<String, dynamic> toJson() => {
    'current_page': currentPage,
    'data': List<dynamic>.from(data.map((x) => x.toJson())),
    'first_page_url': firstPageUrl,
    'from': from,
    'last_page': lastPage,
    'last_page_url': lastPageUrl,
    'links': List<dynamic>.from(links.map((x) => x.toJson())),
    'next_page_url': nextPageUrl,
    'path': path,
    'per_page': perPage,
    'prev_page_url': prevPageUrl,
    'to': to,
    'total': total,
  };
}

class Product {
  final String slug;
  final int status;
  final String storeslug;
  final String purchaseReward;
  final String rewardPoint;
  final String code;
  final String name;
  final String appDescription;
  final String stock;
  final String symbolLeft;
  final String symbolRight;
  final String oldPrice;
  final String price;
  final String discount;
  final String rating;
  final String image;
  final int wishlist;
  final int cart;
  final String store;
  final String manufacturer;
  final String quantity;
  final String minQty;

  Product({
    required this.slug,
    required this.status,
    required this.storeslug,
    required this.purchaseReward,
    required this.rewardPoint,
    required this.code,
    required this.name,
    required this.appDescription,
    required this.stock,
    required this.symbolLeft,
    required this.symbolRight,
    required this.oldPrice,
    required this.price,
    required this.discount,
    required this.rating,
    required this.image,
    required this.wishlist,
    required this.cart,
    required this.store,
    required this.manufacturer,
    required this.quantity,
    required this.minQty,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    slug: json['slug'],
    status: json['status'],
    storeslug: json['storeslug'],
    purchaseReward: json['purchase_reward'],
    rewardPoint: json['reward_point'],
    code: json['code'],
    name: json['name'],
    appDescription: json['app_description'],
    stock: json['stock'],
    symbolLeft: json['symbol_left'],
    symbolRight: json['symbol_right'],
    oldPrice: json['oldprice'],
    price: json['price'],
    discount: json['discount'],
    rating: json['rating'],
    image: json['image'],
    wishlist: json['wishlist'],
    cart: json['cart'],
    store: json['store'],
    manufacturer: json['manufacturer'],
    quantity: json['quantity'],
    minQty: json['min_qty'],
  );

  Map<String, dynamic> toJson() => {
    'slug': slug,
    'status': status,
    'storeslug': storeslug,
    'purchase_reward': purchaseReward,
    'reward_point': rewardPoint,
    'code': code,
    'name': name,
    'app_description': appDescription,
    'stock': stock,
    'symbol_left': symbolLeft,
    'symbol_right': symbolRight,
    'oldprice': oldPrice,
    'price': price,
    'discount': discount,
    'rating': rating,
    'image': image,
    'wishlist': wishlist,
    'cart': cart,
    'store': store,
    'manufacturer': manufacturer,
    'quantity': quantity,
    'min_qty': minQty,
  };
}

class Link {
  final String? url;
  final String label;
  final bool active;

  Link({required this.url, required this.label, required this.active});

  factory Link.fromJson(Map<String, dynamic> json) =>
      Link(url: json['url'], label: json['label'], active: json['active']);

  Map<String, dynamic> toJson() => {
    'url': url,
    'label': label,
    'active': active,
  };
}
