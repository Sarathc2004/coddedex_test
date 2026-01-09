class HomeModel {
  int success;
  String message;
  List<Banner> banner1;
  List<Banner> banner2;
  List<Banner> banner3;
  List<dynamic> banner4;
  List<dynamic> banner5;
  List<BestSeller> recentviews;
  List<BestSeller> ourProducts;
  List<BestSeller> suggestedProducts;
  List<BestSeller> bestSeller;
  List<BestSeller> flashSail;
  List<BestSeller> newarrivals;
  List<CategoryElement> categories;
  List<Featuredbrand> featuredbrands;
  int cartcount;
  dynamic wishlistcount;
  Currency currency;
  int notificationCount;

  HomeModel({
    required this.success,
    required this.message,
    required this.banner1,
    required this.banner2,
    required this.banner3,
    required this.banner4,
    required this.banner5,
    required this.recentviews,
    required this.ourProducts,
    required this.suggestedProducts,
    required this.bestSeller,
    required this.flashSail,
    required this.newarrivals,
    required this.categories,
    required this.featuredbrands,
    required this.cartcount,
    required this.wishlistcount,
    required this.currency,
    required this.notificationCount,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    success: json['success'],
    message: json['message'],
    banner1: List<Banner>.from(json['banner1'].map((x) => Banner.fromJson(x))),
    banner2: List<Banner>.from(json['banner2'].map((x) => Banner.fromJson(x))),
    banner3: List<Banner>.from(json['banner3'].map((x) => Banner.fromJson(x))),
    banner4: List<dynamic>.from(json['banner4']),
    banner5: List<dynamic>.from(json['banner5']),
    recentviews: List<BestSeller>.from(
      json['recentviews'].map((x) => BestSeller.fromJson(x)),
    ),
    ourProducts: List<BestSeller>.from(
      json['ourProducts'].map((x) => BestSeller.fromJson(x)),
    ),
    suggestedProducts: List<BestSeller>.from(
      json['suggestedProducts'].map((x) => BestSeller.fromJson(x)),
    ),
    bestSeller: List<BestSeller>.from(
      json['bestSeller'].map((x) => BestSeller.fromJson(x)),
    ),
    flashSail: List<BestSeller>.from(
      json['flashSail'].map((x) => BestSeller.fromJson(x)),
    ),
    newarrivals: List<BestSeller>.from(
      json['newarrivals'].map((x) => BestSeller.fromJson(x)),
    ),
    categories: List<CategoryElement>.from(
      json['categories'].map((x) => CategoryElement.fromJson(x)),
    ),
    featuredbrands: List<Featuredbrand>.from(
      json['featuredbrands'].map((x) => Featuredbrand.fromJson(x)),
    ),
    cartcount: json['cartcount'],
    wishlistcount: json['wishlistcount'],
    currency: Currency.fromJson(json['currency']),
    notificationCount: json['notificationCount'],
  );

  Map<String, dynamic> toJson() => {
    'success': success,
    'message': message,
    'banner1': List<dynamic>.from(banner1.map((x) => x.toJson())),
    'banner2': List<dynamic>.from(banner2.map((x) => x.toJson())),
    'banner3': List<dynamic>.from(banner3.map((x) => x.toJson())),
    'banner4': List<dynamic>.from(banner4),
    'banner5': List<dynamic>.from(banner5),
    'recentviews': List<dynamic>.from(recentviews.map((x) => x.toJson())),
    'ourProducts': List<dynamic>.from(ourProducts.map((x) => x.toJson())),
    'suggestedProducts': List<dynamic>.from(
      suggestedProducts.map((x) => x.toJson()),
    ),
    'bestSeller': List<dynamic>.from(bestSeller.map((x) => x.toJson())),
    'flashSail': List<dynamic>.from(flashSail.map((x) => x.toJson())),
    'newarrivals': List<dynamic>.from(newarrivals.map((x) => x.toJson())),
    'categories': List<dynamic>.from(categories.map((x) => x.toJson())),
    'featuredbrands': List<dynamic>.from(featuredbrands.map((x) => x.toJson())),
    'cartcount': cartcount,
    'wishlistcount': wishlistcount,
    'currency': currency.toJson(),
    'notificationCount': notificationCount,
  };
}

class Banner {
  int id;
  int linkType;
  String linkValue;
  String image;
  String? video;
  String title;
  String subTitle;
  String buttonText;
  String? logo;

  Banner({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    this.video,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    this.logo,
  });

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
    id: json['id'],
    linkType: json['linkType'],
    linkValue: json['linkValue'],
    image: json['image'],
    video: json['video'],
    title: json['title'],
    subTitle: json['subTitle'],
    buttonText: json['buttonText'],
    logo: json['logo'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'linkType': linkType,
    'linkValue': linkValue,
    'image': image,
    'video': video,
    'title': title,
    'subTitle': subTitle,
    'buttonText': buttonText,
    'logo': logo,
  };
}

class BestSeller {
  int productId;
  String slug;
  String code;
  String homeImg;
  String name;
  String? isGender;
  String category;
  String store;
  String storeslug;
  String manufacturer;
  String symbolLeft;
  String symbolRight;
  String stock;
  int minQty;
  String oldprice;
  String price;
  String quantity;
  String image;
  int cart;
  int wishlist;

  BestSeller({
    required this.productId,
    required this.slug,
    required this.code,
    required this.homeImg,
    required this.name,
    this.isGender,
    required this.category,
    required this.store,
    required this.storeslug,
    required this.manufacturer,
    required this.symbolLeft,
    required this.symbolRight,
    required this.stock,
    required this.minQty,
    required this.oldprice,
    required this.price,
    required this.quantity,
    required this.image,
    required this.cart,
    required this.wishlist,
  });

  factory BestSeller.fromJson(Map<String, dynamic> json) => BestSeller(
    productId: json['productId'],
    slug: json['slug'],
    code: json['code'],
    homeImg: json['homeImg'] ?? '',
    name: json['name'],
    isGender: json['isGender'],
    category: json['category'],
    store: json['store'],
    storeslug: json['storeslug'],
    manufacturer: json['manufacturer'],
    symbolLeft: json['symbolLeft'] ?? '',
    symbolRight: json['symbolRight'],
    stock: json['stock'],
    minQty: json['minQty'],
    oldprice: json['oldprice'],
    price: json['price'],
    quantity: json['quantity'],
    image: json['image'],
    cart: json['cart'],
    wishlist: json['wishlist'],
  );

  Map<String, dynamic> toJson() => {
    'productId': productId,
    'slug': slug,
    'code': code,
    'homeImg': homeImg,
    'name': name,
    'isGender': isGender,
    'category': category,
    'store': store,
    'storeslug': storeslug,
    'manufacturer': manufacturer,
    'symbolLeft': symbolLeft,
    'symbolRight': symbolRight,
    'stock': stock,
    'minQty': minQty,
    'oldprice': oldprice,
    'price': price,
    'quantity': quantity,
    'image': image,
    'cart': cart,
    'wishlist': wishlist,
  };
}

class CategoryElement {
  Featuredbrand category;
  List<dynamic> subcategory;

  CategoryElement({required this.category, required this.subcategory});

  factory CategoryElement.fromJson(Map<String, dynamic> json) =>
      CategoryElement(
        category: Featuredbrand.fromJson(json['category']),
        subcategory: List<dynamic>.from(json['subcategory']),
      );

  Map<String, dynamic> toJson() => {
    'category': category.toJson(),
    'subcategory': subcategory,
  };
}

class Featuredbrand {
  int id;
  String slug;
  String image;
  String name;
  String? description;

  Featuredbrand({
    required this.id,
    required this.slug,
    required this.image,
    required this.name,
    this.description,
  });

  factory Featuredbrand.fromJson(Map<String, dynamic> json) => Featuredbrand(
    id: json['id'],
    slug: json['slug'],
    image: json['image'],
    name: json['name'],
    description: json['description'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'slug': slug,
    'image': image,
    'name': name,
    'description': description,
  };
}

class Currency {
  String name;
  String code;
  String symbolLeft;
  String symbolRight;
  String value;
  String currency;
  int isDefault;
  int status;

  Currency({
    required this.name,
    required this.code,
    required this.symbolLeft,
    required this.symbolRight,
    required this.value,
    required this.currency,
    required this.isDefault,
    required this.status,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    name: json['name'],
    code: json['code'],
    symbolLeft: json['symbolLeft'] ?? '',
    symbolRight: json['symbolRight'],
    value: json['value'],
    currency: json['currency'],
    isDefault: json['isDefault'],
    status: json['status'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'code': code,
    'symbolLeft': symbolLeft,
    'symbolRight': symbolRight,
    'value': value,
    'currency': currency,
    'isDefault': isDefault,
    'status': status,
  };
}
