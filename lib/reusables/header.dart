import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';

class Header extends StatelessWidget {
  final String headText;
  const Header({super.key, required this.headText});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.black,
                fontSize: 30.0,
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0, left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Joshua Gasasira",
                        style: TextStyle(color: AppColor.black),
                      ),
                      Text(
                        "HR Personel",
                        style: TextStyle(color: AppColor.black),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
