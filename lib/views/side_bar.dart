import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrm_web/controllers/sideNavController.dart';
import 'package:hrm_web/reusables/appColors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool showEmployeeTabs = false;
  bool showRecruitmentTabs = false;
  bool showLeaveTabs = false;

  SideBarController sideBarController = Get.put(SideBarController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        //height: MediaQuery.of(context).size.height,
        color: AppColor.bgColorMenu,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Josh Corp",
                  style: TextStyle(
                    color: AppColor.mainColor,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "MAIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Obx(
                () => Expanded(
                  child: ListView(
                    //physics: NeverScrollableScrollPhysics(),
                    children: [
                      MenuListItem(
                        icon: Icons.dashboard,
                        title: "DashBoard",
                        onPressed: () => sideBarController.index.value = 0,
                        selected: sideBarController.index.value == 0,
                        //Navigator.of(context).pushNamed('/');
                      ),
                      MenuListItem(
                        icon: Icons.mail,
                        title: "Messages",
                        onPressed: () => sideBarController.index.value = 1,
                        selected: sideBarController.index.value == 1,
                      ),
                      MenuListItem(
                        icon: Icons.people,
                        title: "Employees",
                        onPressed: () {
                          setState(() {
                            showEmployeeTabs = !showEmployeeTabs;
                          });
                        },
                        //onPressed: () => sideBarController.index.value = 2,
                        selected:
                            showEmployeeTabs, //sideBarController.index.value == 2,
                      ),
                      Visibility(
                        visible: showEmployeeTabs,
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              MenuListSubItem(
                                //icon: Icons.nature_people,
                                title: "Attendance",
                                onPressed: () =>
                                    sideBarController.index.value = 8,
                                selected: sideBarController.index.value == 8,
                              ),
                              MenuListSubItem(
                                //icon: Icons.nature_people,
                                title: "Statistics",
                                onPressed: () =>
                                    sideBarController.index.value = 9,
                                selected: sideBarController.index.value == 9,
                              ),
                              MenuListItem(
                                icon: Icons.event,
                                title: "Leave",
                                onPressed: () {
                                  setState(() {
                                    showLeaveTabs = !showLeaveTabs;
                                  });
                                }, // => sideBarController.index.value = 3,
                                selected: false,
                              ),
                              Visibility(
                                visible: showLeaveTabs,
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      MenuListSubItem(
                                        //icon: Icons.nature_people,
                                        title: "On Leave",
                                        onPressed: () =>
                                            sideBarController.index.value = 10,
                                        selected:
                                            sideBarController.index.value == 10,
                                      ),
                                      // MenuListSubItem(
                                      //   //icon: Icons.nature_people,
                                      //   title: "Leave Approvals",
                                      //   onPressed: () =>
                                      //       sideBarController.index.value = 11,
                                      //   selected:
                                      //       sideBarController.index.value == 11,
                                      // ),
                                      MenuListSubItem(
                                        //icon: Icons.nature_people,
                                        title: "Leave Requests",
                                        onPressed: () =>
                                            sideBarController.index.value = 12,
                                        selected:
                                            sideBarController.index.value == 12,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MenuListItem(
                        icon: Icons.new_label_outlined,
                        title: "Recruitment",
                        onPressed: () {
                          setState(() {
                            showRecruitmentTabs = !showRecruitmentTabs;
                          });
                        },
                        selected: false,
                      ),
                      Visibility(
                        visible: showRecruitmentTabs,
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              MenuListSubItem(
                                //icon: Icons.nature_people,
                                title: "Recruitments",
                                onPressed: () =>
                                    sideBarController.index.value = 13,
                                selected: sideBarController.index.value == 13,
                              ),
                              MenuListSubItem(
                                //icon: Icons.nature_people,
                                title: "Accepted Recruitments",
                                onPressed: () =>
                                    sideBarController.index.value = 14,
                                selected: sideBarController.index.value == 14,
                              ),
                              MenuListSubItem(
                                //icon: Icons.nature_people,
                                title: "Pending Recruitments",
                                onPressed: () =>
                                    sideBarController.index.value = 15,
                                selected: sideBarController.index.value == 15,
                              ),
                              MenuListSubItem(
                                //icon: Icons.nature_people,
                                title: "Rejected Recruitments",
                                onPressed: () =>
                                    sideBarController.index.value = 16,
                                selected: sideBarController.index.value == 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      MenuListItem(
                        icon: Icons.calendar_month,
                        title: "Schedule",
                        onPressed: () => sideBarController.index.value = 2,
                        selected: sideBarController.index.value == 2,
                      ),
                      MenuListItem(
                        icon: Icons.auto_graph_sharp,
                        title: "Reports",
                        onPressed: () => sideBarController.index.value = 3,
                        selected: sideBarController.index.value == 3,
                      ),
                      MenuListItem(
                        icon: Icons.work,
                        title: "Listings/Postings",
                        onPressed: () => sideBarController.index.value = 4,
                        selected: sideBarController.index.value == 4,
                      ),
                    ],
                  ),
                ),
              ),
              Text("USER", style: TextStyle(fontWeight: FontWeight.bold)),
              Obx(
                () => Column(
                  children: [
                    MenuListItem(
                      icon: Icons.person,
                      title: "Profile",
                      onPressed: () => sideBarController.index.value = 5,
                      selected: sideBarController.index.value == 5,
                    ),
                    MenuListItem(
                      icon: Icons.settings,
                      title: "Settings",
                      onPressed: () => sideBarController.index.value = 6,
                      selected: sideBarController.index.value == 6,
                    ),
                    MenuListItem(
                      icon: Icons.help_center_outlined,
                      title: "Help Center",
                      onPressed: () => sideBarController.index.value = 7,
                      selected: sideBarController.index.value == 7,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuListItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool selected;
  const MenuListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      focusColor: AppColor.mainColor,
      onTap: onPressed,
      selected: selected,
      selectedTileColor: AppColor.mainColor,
      selectedColor: Colors.blue, //AppColor.mainColor,
      enabled: true,
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.blue : AppColor.white,
        ),
      ),
    );
  }
}

class MenuListSubItem extends StatelessWidget {
  final String title;
  //final IconData icon;
  final VoidCallback onPressed;
  final bool selected;
  const MenuListSubItem({
    super.key,
    //required this.icon,
    required this.title,
    required this.onPressed,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      focusColor: AppColor.mainColor,
      onTap: onPressed,
      selected: selected,
      selectedTileColor: AppColor.mainColor,
      selectedColor: Colors.blue, //AppColor.mainColor,
      enabled: true,
      //leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.blue : AppColor.white,
          fontSize: 15,
        ),
      ),
    );
  }
}
