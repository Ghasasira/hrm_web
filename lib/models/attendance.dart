class Attendance {
  int id;
  int employeeId;
  DateTime checkIn;
  DateTime checkOut;

  Attendance({
    required this.id,
    required this.employeeId,
    required this.checkIn,
    required this.checkOut,
  });
}
