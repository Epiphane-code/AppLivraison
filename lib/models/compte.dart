class Compte {
  String compteId;
  String userId;
  int solde;

  Compte({
    required this.compteId,
    required this.userId,
    required this.solde,
  });

  void compteFromJson(Map<String, dynamic> json) {
    compteId = json['compteId'];
    userId = json['userId'];
    solde = json['solde'];
  }
  }