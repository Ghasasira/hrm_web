import 'package:flutter/material.dart';

class UserSupportPage extends StatelessWidget {
  const UserSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Support'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Contact information for HR support:'),
            // Display HR contact information or FAQs here
          ],
        ),
      ),
    );
  }
}
