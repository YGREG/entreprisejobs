class EscrowService {
  Future<void> holdPayment(String contractId, double amount) async {
    // Mettre un paiement sous séquestre
  }

  Future<void> releasePayment(String contractId) async {
    // Libérer le paiement
  }
}