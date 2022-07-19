class SessionModel{
  int id;
  String waktu;
  int jumlahAntrian;
  DateTime jadwal;
  int idHospitals;
  int idVaccines;

  SessionModel(
    this.id,
    this.waktu,
    this.jumlahAntrian,
    this.jadwal,
    this.idHospitals,
    this.idVaccines
  );
}