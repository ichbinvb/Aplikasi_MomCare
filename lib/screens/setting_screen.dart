import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 75, // Set the radius of the CircleAvatar
                    backgroundImage: AssetImage('assets/images/user.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey, // Customize divider color
                thickness: 1, // Customize divider thickness
                indent: 10, // Customize left indentation of the divider
                endIndent: 10, // Customize right indentation of the divider
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.language), // Add your icon here
                            SizedBox(
                              width: 10,
                            ), // Add space between icon and text
                            Expanded(
                              child: Text(
                                'Language',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Text(
                              'English',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.note), // Add your icon here
                            SizedBox(
                              width: 10,
                            ), // Add space between icon and text
                            Text(
                              'Setting Account',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.info), // Add your icon here
                            SizedBox(
                              width: 10,
                            ), // Add space between icon and text
                            Text(
                              'About Us',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileScreen2 extends StatelessWidget {
  const ProfileScreen2({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('test'));
  }
}
