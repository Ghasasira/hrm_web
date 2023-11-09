import 'package:get/get.dart';
import 'package:hrm_web/UserPages/time_attendance_performance_training.dart';
import 'package:hrm_web/UserPages/use_support.dart';
import 'package:hrm_web/views/EmployeesScreen.dart';
import 'package:hrm_web/views/dashboard.dart';
import 'package:hrm_web/views/employee/attendance.dart';
import 'package:hrm_web/views/employee/leave/OnLeave.dart';
import 'package:hrm_web/views/employee/leave/leaveApprovals.dart';
import 'package:hrm_web/views/employee/leave/leaveRequests.dart';
import 'package:hrm_web/views/employee/statistics.dart';
import 'package:hrm_web/views/job_listings.dart';
import 'package:hrm_web/views/recruitents/acceptedRecruitments.dart';
import 'package:hrm_web/views/recruitents/pendingRecruitments.dart';
import 'package:hrm_web/views/recruitents/recruitments.dart';
import 'package:hrm_web/views/recruitents/rejectedRecruitments.dart';
import 'package:hrm_web/views/reports.dart';
import 'package:hrm_web/views/toBeAdded.dart';

class SideBarController extends GetxController {
  RxInt index = 0.obs;

  final pages = [
    const DashBoard(),
    const ToBeAdded(),
    const ToBeAdded(),
    const Reports(),
    const JobListings(),
    const EmployeeServicesPage(),
    const ToBeAdded(),
    const UserSupportPage(),
    const Attendance(),
    const EmployeesStats(),
    const LeaveScreen(),
    const LeaveScreen(),
    const LeaveRequests(),
    const Recruitments(),
    const AcceptedRecruitment(),
    const PendingRecruitment(),
    const RejectedRecruitment(),
  ];
}
