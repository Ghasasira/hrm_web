import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrm_web/controllers/sideNavController.dart';
import 'package:hrm_web/reusables/appColors.dart';
import 'package:hrm_web/reusables/responsive_class.dart';
import 'package:hrm_web/screens/sidebar.dart';
import 'package:hrm_web/views/EmployeesScreen.dart';
import 'package:hrm_web/views/dashboard.dart';
import 'package:hrm_web/views/side_bar.dart';
import 'package:sidebarx/sidebarx.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = Get.put(SideBarController());
    return Scaffold(
      drawer: SideBar(),
      backgroundColor: AppColor.bgColorMenu,
      body: SafeArea(
        child: Row(
          children: [
            //menu side\
            if (AppResponsive.isDesktop(context))
              Expanded(
                child:
                    // PageSidebar(
                    //     controller:
                    //         SidebarXController(selectedIndex: 0))
                    SideBar(),
              ),
            //main side\
            Expanded(
              flex: 6,
              child: Obx(() => sideBarController.pages[
                  sideBarController.index.value]), //pages[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
