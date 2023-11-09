import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';

class SelfCard extends StatelessWidget {
  const SelfCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0, //MediaQuery.of(context).size.height * .20,
      width: MediaQuery.of(context).size.height * .5,
      child: Card(
        //shape: ,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 5,
        color: AppColor.white,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 100.0, //MediaQuery.of(context).size.height * .0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          "Hi Joshua!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 75.0,
                    right: 20,
                    left: 20.0,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: AppColor.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Gasasira Joshua",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: "\nProject Manager",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ])),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * .45,
              //height: 30.0,
              child:
                  ElevatedButton(onPressed: () {}, child: Text("View Profile")),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeTab extends StatefulWidget {
  const TimeTab({super.key});

  @override
  State<TimeTab> createState() => _TimeTabState();
}

class _TimeTabState extends State<TimeTab> {
  String currentTime = "";
  String currentDate = "";

  @override
  void initState() {
    super.initState();

    updateCurrentTime();
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateCurrentTime();
    });
  }

  // Function to update the current time
  void updateCurrentTime() {
    final now = DateTime.now();
    setState(() {
      currentTime = "${now.hour}:${now.minute}:${now.second}";
      currentDate = "${now.year}-${now.month}-${now.day}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0, //MediaQuery.of(context).size.height * .20,
      width: MediaQuery.of(context).size.height * .5,
      child: Card(
        //shape: ,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 5,
        color: AppColor.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Time",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                currentTime,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                currentDate,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
