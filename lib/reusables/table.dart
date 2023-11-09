import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrm_web/controllers/dataController.dart';
import 'package:hrm_web/models/employee.dart';
//import 'package:hrm_web/reusables/appColors.dart';
import 'package:hrm_web/reusables/table_fillers.dart';

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataController dataController = Get.find();

    List<DataCell> getCell(List<dynamic> cells) =>
        cells.map((data) => DataCell(Text("$data"))).toList();

    List<DataRow> getDataRows(List<Employee> users) => users.map((user) {
          //final List cells = shells!.map((shell) => object.shell).toList();
          //print(cells);
          final cells = [
            user.id,
            user.firstName,
            user.lastName,
            user.email,
            user.phoneNumber,
            user.department,
            user.salary,
            user.hireDate
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
      'department',
      'salary',
      'hireDate',
    ];

    //Employee

    // TableFiller tableFiller = TableFiller(shells: [
    //   "id",
    //   "firstName",
    //   "lastName",
    //   "email",
    //   "phoneNumber",
    //   "department",
    //   "salary",
    //   "hireDate"
    // ]);

    return Center(
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
      rows: getDataRows(dataController.employees as List<Employee>),
    ));
  }
}
