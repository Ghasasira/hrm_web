class Applicant {
  int id;
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String desiredPosition;
  double expectedSalary;
  DateTime applicationDate;

  Applicant({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.desiredPosition,
    required this.expectedSalary,
    required this.applicationDate,
  });
}
