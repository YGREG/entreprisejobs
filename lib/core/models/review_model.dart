class ReviewModel {
  final String id;
  final String reviewerId;
  final String revieweeId;
  final String comment;
  final int rating; // 1 to 5
  final DateTime date;

  ReviewModel({
    required this.id,
    required this.reviewerId,
    required this.revieweeId,
    required this.comment,
    required this.rating,
    required this.date,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
    id: json['id'],
    reviewerId: json['reviewerId'],
    revieweeId: json['revieweeId'],
    comment: json['comment'],
    rating: json['rating'],
    date: DateTime.parse(json['date']),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'reviewerId': reviewerId,
    'revieweeId': revieweeId,
    'comment': comment,
    'rating': rating,
    'date': date.toIso8601String(),
  };
}