import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(color: AppColor.black),
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50.0,
                    color: AppColor.black,
                  ),
                ),
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(1000),
              //   child: Image.asset(
              //     "assets/user1.jpg",
              //     height: 60,
              //     width: 60,
              //   ),
              // ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Joshua Gasasira",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: AppColor.black),
                  ),
                  Text(
                    "HR Personel",
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: AppColor.black),
                  ),
                ],
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          profileListTile("Joined Date", "18-Apr-2017"),
          profileListTile("Projects", "32 Active"),
          profileListTile("Accomplishment", "125"),
        ],
      ),
    );
  }

  Widget profileListTile(text, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              color: AppColor.black,
            ),
          ),
          Text(
            value,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
          ),
        ],
      ),
    );
  }
}
