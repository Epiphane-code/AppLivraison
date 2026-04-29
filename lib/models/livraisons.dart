
class Livraison {
  final String id;
  late String? ville;
  late String adresseSource;
  late String adresseDestination;
  late String telephoneSouce;
  late String telephoneDestination;
  late String nature;
  late String? description;
  late String? livreurID;
  late String? contactLivreur;
  late String statut;
  late String? dateCreate;
  late int? price;

  Livraison({
    required this.id,
    this.ville,
    required this.adresseSource,
    required this.adresseDestination,
    required this.telephoneSouce,
    required this.telephoneDestination,
    required this.nature,
    this.description,
    this.livreurID,
    this.contactLivreur,
    required this.statut,
    this.price,
    this.dateCreate
  });
}