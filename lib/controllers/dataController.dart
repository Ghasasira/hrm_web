import 'package:get/get.dart';
import 'package:hrm_web/data/data.dart';
import 'package:hrm_web/models/applicant.dart';
import 'package:hrm_web/models/employee.dart';
import 'package:hrm_web/models/leave_request.dart';
import 'package:hrm_web/models/performanceReview.dart';

import '../models/job.dart';

class DataController extends GetxController {
  RxList employees = <Employee>[].obs;
  RxList listings = <Job>[].obs;
  RxList applicants = <Applicant>[].obs;
  RxList leaveRequests = <LeaveRequest>[].obs;
  RxList performanceReviews = <PerformanceReview>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getAllEmployees();
    getAllJobs();
    getAllApplicants();
    getAllLeaveRequests();
    getPerformanceReviews();
    //print(employees);
    super.onInit();
  }

//<List<Map<String, dynamic>>>
  void getAllEmployees() async {
    try {
      final employeeList = <Employee>[];
      for (var employee in allEmployees) {
        var singleEmployee = Employee(
          id: employee["id"],
          firstName: employee["firstName"],
          lastName: employee["lastName"],
          email: employee["email"],
          phoneNumber: employee["phoneNumber"],
          department: employee["department"],
          salary: employee["salary"],
          hireDate: employee["hireDate"],
        );
        employeeList.add(singleEmployee);
      }
      print("welll");
      employees.addAll(employeeList);
      print(employees.length);
    } catch (e) {
      print(e.toString());
    }
  }

  void getAllJobs() async {
    try {
      final jobList = <Job>[];
      for (var job in allJobs) {
        jobList.add(job);
      }
      print("welll");
      listings.addAll(jobList);
      print(listings.length);
    } catch (e) {
      print(e.toString());
    }
  }

  void getAllLeaveRequests() async {
    try {
      final requestList = <LeaveRequest>[];
      for (var request in allRequests) {
        requestList.add(request);
      }
      print("welll");
      leaveRequests.addAll(requestList);
      print(leaveRequests.length);
    } catch (e) {
      print(e.toString());
    }
  }

  void getPerformanceReviews() async {
    try {
      final reviewList = <PerformanceReview>[];
      for (var review in allPerformanceReviews) {
        reviewList.add(review);
      }
      print("welll");
      performanceReviews.addAll(reviewList);
      print(performanceReviews.length);
    } catch (e) {
      print(e.toString());
    }
  }

  void getAllApplicants() async {
    try {
      final applicantList = <Applicant>[];
      for (var applicant in allApplicants) {
        applicantList.add(applicant);
      }
      print("welll");
      applicants.addAll(applicantList);
      print(applicants.length);
    } catch (e) {
      print(e.toString());
    }
  }
}
