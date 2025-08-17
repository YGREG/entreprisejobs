class FirebaseService {
  Future<Map<String, dynamic>?> getUserData(String userId) async {
    // Simule l’appel Firestore ou Realtime DB
    await Future.delayed(Duration(seconds: 1));
    return {
      'id': userId,
      'name': 'John Doe',
      'email': 'john@example.com',
    };
  }
}