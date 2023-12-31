import 'package:flutter/material.dart';
import 'package:hrm_web/reusables/appColors.dart';
import 'package:hrm_web/staticData.dart/constants.dart';
import 'package:sidebarx/sidebarx.dart';

class PageSidebar extends StatelessWidget {
  const PageSidebar({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.bgColorMenu,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: scaffoldBackgroundColor,
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColor.bgColorMenu),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        //width: 200,
        decoration: BoxDecoration(
            //color: AppColor.bgColorMenu,
            ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            //child: Image.asset('assets/images/avatar.png'),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.dashboard,
          label: 'DashBoard',
          onTap: () {
            debugPrint('Home');
          },
        ),
        const SidebarXItem(
          icon: Icons.chat_bubble_outline_outlined,
          label: 'Messages',
        ),
        const SidebarXItem(
          icon: Icons.people,
          label: 'Employee',
        ),
        const SidebarXItem(
          icon: Icons.schedule,
          label: 'Schedule',
        ),
        const SidebarXItem(
          icon: Icons.report,
          label: 'Reports',
        ),
      ],
    );
  }
}
