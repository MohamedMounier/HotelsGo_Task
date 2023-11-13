class HotelModel {
  final String name;
  final int stars;
  final int price;
  final String currency;
  final String imageUrl;
  final String review;
  final String address;
  final double reviewScore;

  const HotelModel(
      {required this.name,
      required this.stars,
      required this.price,
      required this.currency,
      required this.imageUrl,
      required this.review,
      required this.address,
      required this.reviewScore});

  factory HotelModel.fromJson(Map<String, dynamic> jsonData) => HotelModel(
      name: jsonData["name"],
      stars: jsonData["starts"],
      price: jsonData["price"],
      currency: jsonData["currency"],
      imageUrl: jsonData["image"],
      review: jsonData["review"],
      address: jsonData["address"],
      reviewScore: double.parse('${jsonData["review_score"]}'));


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is HotelModel &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              stars == other.stars &&
              price == other.price &&
              currency == other.currency &&
              imageUrl == other.imageUrl &&
              review == other.review &&
              address == other.address &&
              reviewScore == other.reviewScore;

  @override
  int get hashCode =>
      name.hashCode ^
      stars.hashCode ^
      price.hashCode ^
      currency.hashCode ^
      imageUrl.hashCode ^
      review.hashCode ^
      address.hashCode ^
      reviewScore.hashCode;


}
