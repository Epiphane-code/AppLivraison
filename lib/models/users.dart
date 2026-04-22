class ProfileInfo {
  final int userID;
  late String username;
  late String fulname;
  late String phonenumber;
  late String role;
  late String zone;
  late DateTime datenaissance;
  late String lieunaissance;
  late String sexe;
  late String? zoneactuelle;
  late String? imageUrl;
  late String? carteIdUrl;
  ProfileInfo({
    required this.userID,
    required this.username,
    required this.fulname,
    required this.phonenumber,
    required this.role,
    required this.zone,
    required this.datenaissance,
    required this.lieunaissance,
    required this.sexe,
    this.zoneactuelle,
    this.imageUrl,
    this.carteIdUrl,
  });

  void updateProfile({
    String? username,
    String? fulname,
    String? phonenumber,
    String? role,
    String? zone,
    DateTime? datenaissance,
    String? lieunaissance,
    String? sexe,
    String? zoneactuelle,
    String? imageUrl,
    String? carteIdUrl,
  }) {
    if (username != null) this.username = username;
    if (fulname != null) this.fulname = fulname;
    if (phonenumber != null) this.phonenumber = phonenumber;
    if (role != null) this.role = role;
    if (zone != null) this.zone = zone;
    if (datenaissance != null) this.datenaissance = datenaissance;
    if (lieunaissance != null) this.lieunaissance = lieunaissance;
    if (sexe != null) this.sexe = sexe;
    if (zoneactuelle != null) this.zoneactuelle = zoneactuelle;
    if (imageUrl != null) this.imageUrl = imageUrl;
    if (carteIdUrl != null) this.carteIdUrl = carteIdUrl;
  }

  static ProfileInfo profileFromJSON(Map<String, dynamic> json) {
    return ProfileInfo(
      userID: json['userID'],
      username: json['username'],
      fulname: json['fulname'],
      phonenumber: json['phonenumber'],
      role: json['role'],
      zone: json['zone'],
      datenaissance: DateTime.parse(json['datenaissance']),
      lieunaissance: json['lieunaissance'],
      sexe: json['sexe'],
      zoneactuelle: json['zoneactuelle'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      carteIdUrl: json['carteIdUrl'] ?? '',
    );
  }

  Map<String, dynamic> profileToJSON() {
    return {
      'userID': userID,
      'username': username,
      'fulname': fulname,
      'phonenumber': phonenumber,
      'role': role,
      'zone': zone,
      'datenaissance': datenaissance.toIso8601String(),
      'lieunaissance': lieunaissance,
      'sexe': sexe,
      'zoneactuelle': zoneactuelle,
      'imageUrl': imageUrl,
      'carteIdUrl': carteIdUrl,
    };
  }
}