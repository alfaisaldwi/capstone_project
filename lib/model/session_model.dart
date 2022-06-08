class SessionModel{
  final String name;
  final String location;
  final String date;
  final String session;
  final String vaccine;
  final String stock;
  
  SessionModel(
    this.name,
    this.location,
    this.date,
    this.session,
    this.vaccine,
    this.stock,
  );

  // factory SessionModel.fromJson(Map<String, dynamic> json){
  //   return SessionModel(
  //     json["nama"]??'',
  //     json["kota"]??'',
  //     json["alamat"]??'',
  //     json["telp"]??'',
  //     json["jenis_faskes"]??'',
  //     json["status"]??'',
  //   );
  // }
}
