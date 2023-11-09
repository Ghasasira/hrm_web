import 'package:flutter/material.dart';
import 'package:hrm_web/screens/sidebar.dart';
import 'package:sidebarx/sidebarx.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child:
                PageSidebar(controller: SidebarXController(selectedIndex: 0)),
          ),
          // Your app screen body
          Expanded(
            child: Container(
              width: double.infinity, // Take the remaining space
              color: Colors.white, // You can change the background color
              child: Center(
                child: Text(
                  'Main Content Goes Here',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
