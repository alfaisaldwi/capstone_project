class HospitalModel {
  int? id;
  String name;
  String address;
  String email;
  String city;
  // int idUsers;
  // int idProvinces;

  HospitalModel({
    this.id,
    required this.name,
    required this.address,
    required this.email,
    required this.city
    // this.idUsers,
    // this.idProvinces
  });
  factory HospitalModel.fromJson(Map<String, dynamic> json) {
    return HospitalModel(
        id: json['id'],
        name: json['name'],
        address: json['addres'],
        email: json['email'],
        city: json['city']
        // id_roles: roleList,
        );
  }
  factory HospitalModel.fromMap(Map<String, dynamic> json) => HospitalModel(
        id: json["id"],
        name: json["name"],
        address: json["addres"],
        email: json['email'],
        city: json['city']
        // id_roles: json["id_roles"],
      );

  static fromJSON(i) {}
}
