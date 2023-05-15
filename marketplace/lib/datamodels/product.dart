class Product {
  Product(
      {required this.desc,
      required this.id,
      required this.isFav,
      required this.price,
      required this.type,
      required this.rating,
      required this.reviewsCount,
      required this.imageURL,
      this.fullImageURL,
      this.preview1ImageURL,
      this.preview2ImageURL,
      this.preview3ImageURL});

  String id;
  String type;
  String desc;
  String price;
  bool isFav;
  int reviewsCount;
  double rating;
  String imageURL;
  String? fullImageURL;
  String? preview1ImageURL;
  String? preview2ImageURL;
  String? preview3ImageURL;
}
