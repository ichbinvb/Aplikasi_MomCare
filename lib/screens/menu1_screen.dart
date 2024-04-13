import 'package:flutter/material.dart';

class DoctorVisitReminderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Visit Reminder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Menu Items
            ElevatedButton(
              onPressed: () {
                // Action when Set Reminder button is pressed
                // Add your logic here
              },
              child: Text('Set Reminder'),
            ),
            ElevatedButton(
              onPressed: () {
                // Action when View Reminder button is pressed
                // Add your logic here
              },
              child: Text('View Reminder'),
            ),
            ElevatedButton(
              onPressed: () {
                // Action when Edit Reminder button is pressed
                // Add your logic here
              },
              child: Text('Edit Reminder'),
            ),
            ElevatedButton(
              onPressed: () {
                // Action when Delete Reminder button is pressed
                // Add your logic here
              },
              child: Text('Delete Reminder'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DoctorVisitReminderPage(),
  ));
}
