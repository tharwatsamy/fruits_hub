import '../entities/review_entity.dart';

class ReviewModel {
  final String name;
  final String image;
  final num ratting;
  final String date;
  final String reviewDescription;

  ReviewModel(
      {required this.name,
      required this.image,
      required this.ratting,
      required this.date,
      required this.reviewDescription});

  factory ReviewModel.fromEntity(ReviewEntity reviewEntity) {
    return ReviewModel(
        name: reviewEntity.name,
        image: reviewEntity.image,
        ratting: reviewEntity.ratting,
        date: reviewEntity.date,
        reviewDescription: reviewEntity.reviewDescription);
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
        name: json['name'],
        image: json['image'],
        ratting: json['ratting'],
        date: json['date'],
        reviewDescription: json['reviewDescription']);
  }

  ReviewEntity toEntity() {
    return ReviewEntity(
        name: name,
        image: image,
        ratting: ratting,
        date: date,
        reviewDescription: reviewDescription);
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'ratting': ratting,
      'date': date,
      'reviewDescription': reviewDescription
    };
  }
}
