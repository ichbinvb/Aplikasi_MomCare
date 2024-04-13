import 'package:flutter/material.dart';

class ChatWithDoctorPage extends StatelessWidget {
  const ChatWithDoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with Doctor'),
        backgroundColor: Color.fromARGB(255, 105, 202, 205),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Start a chat with our doctors',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to start chat with doctor
              },
              child: Text('Start Chat'),
            ),
          ],
        ),
      ),
    );
  }
}
