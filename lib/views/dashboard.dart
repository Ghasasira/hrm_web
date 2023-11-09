import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';
import 'package:hrm_web/reusables/dataTable.dart';
import 'package:hrm_web/reusables/header.dart';
import 'package:hrm_web/reusables/menu_card.dart';
import 'package:hrm_web/reusables/noticeCard.dart';
import 'package:hrm_web/reusables/responsive_class.dart';
import 'package:hrm_web/views/calender.dart';
import 'package:hrm_web/views/profile_card.dart';
import 'package:hrm_web/reusables/table.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //child: Container(
      child: Container(
        height: MediaQuery.of(context).size.height,
        //margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: AppColor.bgColor,
          // borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          children: [
            Header(
              headText: "Dashboard",
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NotificationCard(),
                            SizedBox(
                              height: 20,
                            ),
                            if (AppResponsive.isMobile(context)) ...{
                              CalendarWidget(),
                              SizedBox(
                                height: 20,
                              ),
                            },
                            Wrap(
                              runSpacing: 20,
                              spacing: 20,
                              runAlignment: WrapAlignment.spaceAround,
                              //alignment: WrapAlignment.spaceEvenly,
                              children: [
                                MenuCard(),
                                MenuCard(),
                                MenuCard(),
                                MenuCard(),
                                MenuCard(),
                                MenuCard(),
                                MenuCard(),
                                MenuCard(),
                                MenuCard(),
                                MenuCard(),
                              ],
                            )
                            //MenuCard(),
                            //MyTable(),
                            //DataTableWid(),
                          ],
                        ),
                      ),
                    ),
                    if (!AppResponsive.isMobile(context))
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              CalendarWidget(),
                              SizedBox(
                                height: 20,
                              ),
                              ProfileCard(),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
