import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/clock_in_out.dart';
import 'package:hrm_web/reusables/self_employee_card.dart';
import 'package:hrm_web/views/calender.dart';

class TimeAndAttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        SelfCard(),
                        TimeTab(),
                      ],
                    ),
                    Expanded(child: ClockInOut()),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CalendarWidget(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ))
      ],
    );
  }
}
