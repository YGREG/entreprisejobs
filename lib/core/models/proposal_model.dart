class ProposalModel {
  final String id;
  final String jobId;
  final String freelancerId;
  final double amount;
  final String message;
  final DateTime submittedAt;

  ProposalModel({
    required this.id,
    required this.jobId,
    required this.freelancerId,
    required this.amount,
    required this.message,
    required this.submittedAt,
  });
}