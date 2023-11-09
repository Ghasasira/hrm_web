class LeaveRequest {
  int id;
  int employeeId;
  DateTime startDate;
  DateTime endDate;
  String reason;
  bool approved;

  LeaveRequest({
    required this.id,
    required this.employeeId,
    required this.startDate,
    required this.endDate,
    required this.reason,
    required this.approved,
  });
}
