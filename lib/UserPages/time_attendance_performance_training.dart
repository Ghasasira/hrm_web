import 'package:flutter/material.dart';
import 'package:hrm_web/UserPages/performance_management_page.dart';
import 'package:hrm_web/UserPages/time_and_attendance.dart';
import 'package:hrm_web/UserPages/training_development_page.dart';
import 'package:hrm_web/reusables/appColors.dart';
import 'package:hrm_web/reusables/header.dart';
import 'package:hrm_web/reusables/search.dart';
import 'package:hrm_web/reusables/table.dart';

class EmployeeServicesPage extends StatelessWidget {
  const EmployeeServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          /*title: Text(
            'Hello!\nJoshua',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),*/
          actions: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Header(headText: "Hello!")),
          ],
          backgroundColor: AppColor.bgColor,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Time & Attendance'),
              Tab(text: 'Performance Management'),
              Tab(text: 'Training & Development'),
              /*Tab(
                text: "",
              )*/
            ],
            unselectedLabelColor: const Color.fromARGB(
                255, 88, 88, 88), // Color of unselected tab labels
            labelColor: Colors.blue, // Color of the selected tab label
          ),
        ),
        body: Container(
          color: AppColor.bgColor,
          child: TabBarView(
            children: [
              TimeAndAttendancePage(),
              PerformanceManagementPage(),
              TrainingDevelopmentPage(),
            ],
          ),
        ),
      ),
    );
  }
}
