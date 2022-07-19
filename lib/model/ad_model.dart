class AdModel {
  int? id;
  String? image;

  AdModel({
    this.id,
    this.image,
  });
  factory AdModel.fromJson(Map<String, dynamic> json) {
    // var list = json['id_roles'] as List;
    // List<Role> roleList = list.map((i) => Role.fromJson(i)).toList();

    return AdModel(
      id: json['id'],
      image: json['image'],
      // id_roles: roleList,
    );
  }
}
