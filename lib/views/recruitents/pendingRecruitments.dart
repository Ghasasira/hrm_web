import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrm_web/controllers/dataController.dart';
import 'package:hrm_web/models/applicant.dart';
import 'package:hrm_web/reusables/appColors.dart';
import 'package:hrm_web/reusables/header.dart';
import 'package:hrm_web/reusables/search.dart';
import 'package:hrm_web/reusables/table_fillers.dart';

class PendingRecruitment extends StatelessWidget {
  const PendingRecruitment({super.key});

  @override
  Widget build(BuildContext context) {
    DataController dataController = Get.find();

    List<DataCell> getCell(List<dynamic> cells) =>
        cells.map((data) => DataCell(Text("$data"))).toList();

    List<DataRow> getDataRows(List<Applicant> users) => users.map((user) {
          final cells = [
            user.id,
            user.firstName,
            user.lastName,
            user.email,
            user.phoneNumber,
            user.desiredPosition,
            user.expectedSalary,
            user.applicationDate
          ];

          return DataRow(
            cells: getCell(cells),
          );
        }).toList();

    final List<String> column = [
      'id',
      'firstName',
      'lastName',
      'email',
      'phoneNumber',
      'desiredPosition',
      'expectedSalary',
      'applicationDate',
    ];

    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
      ),
      child: Column(children: [
        Header(headText: "Pending Applicants"),
        SizedBox(
          height: 40.0,
        ),
        SearchWid(),
        SizedBox(height: 40.0),
        Expanded(
          child: SingleChildScrollView(
            child: Center(
                child: DataTable(
              headingRowColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.blueAccent; // Selected header row color
                }
                return Colors.blueGrey; // Default header row color
              }),
              // dataRowColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
              //   if (states.contains(MaterialState.selected)) {
              //     return Colors.greenAccent; // Selected row color
              //   }
              //   return Colors.green; // Default row color
              // }),
              dataTextStyle: TextStyle(
                color: Colors.black, // Text color for data rows
              ),
              // border: TableBorder.all(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(10.0), // Border color
              //   width: 1.0, // Border width
              // ),
              columns: TableFiller.getDatacolumns(column),
              rows: getDataRows(dataController.applicants as List<Applicant>),
            )),
          ),
        ),
      ]),
    );
  }
}
