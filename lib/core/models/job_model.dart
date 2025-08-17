class JobModel {
  final String id;
  final String title;
  final String description;
  final double budget;
  final String clientId;
  final DateTime createdAt;

  JobModel({
    required this.id,
    required this.title,
    required this.description,
    required this.budget,
    required this.clientId,
    required this.createdAt,
  });
}

