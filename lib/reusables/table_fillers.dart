import 'package:flutter/material.dart';
import 'package:hrm_web/models/employee.dart';
import 'package:hrm_web/reusables/appColors.dart';

class TableFiller {
  static List<DataColumn> getDatacolumns(List<String> coll) => coll
      .map((String col) => DataColumn(
            label: Text(
              col,
              style: TextStyle(color: AppColor.black),
            ),
          ))
      .toList();

  // List<DataRow> getDataRows(objects) => objects.map((object) {
  //       final List cells = shells!.map((shell) => object.shell).toList();
  //       print(cells);
  //       /*final cells = [
  //         user.id,
  //         user.firstName,
  //         user.lastName,
  //         user.email,
  //         user.phoneNumber,
  //         user.department,
  //         user.salary,
  //         user.hireDate
  //       ];*/

  //       return DataRow(
  //         cells: getCell(cells),
  //       );
  //     }).toList();

  // List<DataCell> getCell(List<dynamic> cells) =>
  //     cells.map((data) => DataCell(Text("$data"))).toList();
}
