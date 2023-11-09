import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrm_web/controllers/dataController.dart';
import 'package:hrm_web/models/performanceReview.dart';
import 'package:hrm_web/reusables/appColors.dart';
import 'package:hrm_web/reusables/header.dart';
import 'package:hrm_web/reusables/search.dart';
import 'package:hrm_web/reusables/table_fillers.dart';

class EmployeesStats extends StatelessWidget {
  const EmployeesStats({super.key});

  @override
  Widget build(BuildContext context) {
    DataController dataController = Get.find();

    List<DataCell> getCell(List<dynamic> cells) =>
        cells.map((data) => DataCell(Text("$data"))).toList();

    List<DataRow> getDataRows(List<PerformanceReview> requests) =>
        requests.map((request) {
          final cells = [
            request.id,
            request.employeeId,
            request.reviewDate,
            request.feedback,
            request.rating,
          ];

          return DataRow(
            cells: getCell(cells),
          );
        }).toList();

    final List<String> column = [
      'id',
      'employeeId',
      'reviewDate',
      'feedback',
      'rating (0-5)',
    ];

    return Container(
      height: MediaQuery.of(context).size.height,
      //margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        // borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(children: [
        Header(headText: "Performance Reviews"),
        SizedBox(
          height: 40.0,
        ),
        SearchWid(),
        SizedBox(height: 40.0),
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
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
                rows: getDataRows(dataController.performanceReviews
                    as List<PerformanceReview>),
              )),
            ),
          ),
        ),
      ]),
    );
  }
}
