import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';
import 'package:hrm_web/reusables/header.dart';
import 'package:hrm_web/reusables/search.dart';
import 'package:hrm_web/reusables/table.dart';

class LeaveApproval extends StatelessWidget {
  const LeaveApproval({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      //margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        // borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(children: [
        Header(headText: "Leave Approvals"),
        SizedBox(
          height: 40.0,
        ),
        SearchWid(),
        SizedBox(height: 40.0),
        MyTable(),
      ]),
    );
  }
}
