import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';

class ClockInOut extends StatefulWidget {
  const ClockInOut({super.key});

  @override
  State<ClockInOut> createState() => _ClockInOutState();
}

class _ClockInOutState extends State<ClockInOut> {
  bool isChecked = false;
  String checkInTime = "";
  String checkOutTime = "";

  setTimeCheckIn() {
    final now = DateTime.now();
    setState(() {
      checkInTime = "${now.hour}:${now.minute}";
    });
  }

  setTimeCheckOut() {
    final now = DateTime.now();
    setState(() {
      checkOutTime = "${now.hour}:${now.minute}";
    });
  }

  void onChanged() {
    setState(() {
      isChecked ? setTimeCheckOut() : setTimeCheckIn();
      isChecked = !isChecked;
    });
  }

  // Widget build(BuildContext context) {
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      //color: Colors.black,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: AppColor.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Select Project",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ProjectMiniTab(),
              Divider(
                color: Colors.black,
              ),
              Text(
                "Attendance",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("Start Time:"),
                      checkInTime == ""
                          ? const Text("__:__")
                          : Text(checkInTime),
                    ],
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Column(
                    children: [
                      Text("Stop Time:"),
                      checkOutTime == ""
                          ? const Text("__:__")
                          : Text(checkOutTime),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  // style: ElevatedButton.styleFrom(
                  //   backgroundColor:
                  // ),
                  onPressed: onChanged,

                  child: isChecked ? Text("Clock Out") : Text("Clock In"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectMiniTab extends StatefulWidget {
  const ProjectMiniTab({
    super.key,
  });

  @override
  State<ProjectMiniTab> createState() => _ProjectMiniTabState();
}

class _ProjectMiniTabState extends State<ProjectMiniTab> {
  List projects = [
    "General",
    "Project",
    "Interviews",
    "Personal Dev",
    "Reports",
  ];

  String selected = "General";

  @override
  Widget build(BuildContext context) {
    //PropertyController propertyController = Get.find();
    return Container(
      //height: 50.0,
      child: Wrap(
        direction: Axis.horizontal, runSpacing: 10.0,
        //scrollDirection: Axis.horizontal,
        children: projects.map((project) {
          bool isSelected = (project == selected);
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = project;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 35.0,
                constraints: BoxConstraints(
                  minWidth: 30.0,
                  maxWidth: 120.0,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.amber : null,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(project),
                )),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
