import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height *
            0.3, // Set your desired minimum height here
      ),
      child: Card(
        color: AppColor.mainColor,
        elevation: 5.0,
        shadowColor: AppColor.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        //padding: EdgeInsets.all(20),
        // decoration: BoxDecoration(
        //   color: AppColor.mainColor,
        //   borderRadius: BorderRadius.circular(20.0),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 16.0,
                        color: AppColor.black,
                      ),
                      children: [
                        TextSpan(text: "Hello "),
                        TextSpan(
                          text: "Joshua!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "2 New Applications. \n1 Resignation Letter.\n5 Leave Applications.",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Spacer(),
              //Image.asset("images/notice.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
