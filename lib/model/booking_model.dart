class BookingModel{
  int id;
  String bookedCode;
  bool status;
  int idUsers;
  int idHospitals;
  int idSessions;

  BookingModel(
    this.id,
    this.bookedCode,
    this.status,
    this.idUsers,
    this.idHospitals,
    this.idSessions
  );
}