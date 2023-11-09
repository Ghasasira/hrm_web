import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';

class MenuCard extends StatefulWidget {
  const MenuCard({super.key});

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  bool hover = false;

  //Color btnHooverColor=AppColor.mainColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.17,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: !hover ? AppColor.mainColor : Colors.blue,
          elevation: 10,
        ),
        onPressed: () {},
        //onHover: (hover) => hover = true,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.remove_red_eye,
                size: 100.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "10",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.red,
                    ),
                  ),
                  Text("Absentees"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
