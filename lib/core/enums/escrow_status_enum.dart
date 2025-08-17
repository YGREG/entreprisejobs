class ContractModel {
  final String id;
  final String jobId;
  final String freelancerId;
  final String clientId;
  final String status; // pending, active, completed
  final DateTime startDate;
  final DateTime? endDate;

  ContractModel({
    required this.id,
    required this.jobId,
    required this.freelancerId,
    required this.clientId,
    required this.status,
    required this.startDate,
    this.endDate,
  });
}