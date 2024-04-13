import 'package:flutter/material.dart';
import 'package:my_app/screens/nutrisi_screen.dart';
import 'package:my_app/screens/menu1_screen.dart';
import 'package:my_app/screens/chat_screen.dart';

class Homescreen extends StatefulWidget {
  final String title;

  const Homescreen({Key? key, required this.title}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching ? _buildSearchField() : const Text('Search'),
        actions: [
          IconButton(
            icon: Icon(_isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  _searchController.clear();
                }
              });
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          buildMenuItem(Icons.calendar_today, 'Doctor Visit Reminder'),
          buildMenuItem(Icons.restaurant_menu, 'Nutrition Information'),
          buildMenuItem(Icons.fitness_center, 'Physical Exercise Guide'),
          buildMenuItem(Icons.self_improvement, 'Mental Health Tips'),
          buildMenuItem(Icons.pregnant_woman, 'Contraction Tracker'),
          buildMenuItem(Icons.chat_bubble, 'Chat with Doctor'),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return Expanded(
      child: TextFormField(
        controller: _searchController,
        decoration: const InputDecoration(
          labelText: 'Search',
          border: InputBorder.none, // Remove the border around TextFormField
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        if (label == 'Nutrition Information') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NutrisiScreen(),
            ),
          );
        } else if (label == 'Doctor Visit Reminder') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DoctorVisitReminderPage(),
            ),
          );
        } else if (label == 'Chat with Doctor') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatWithDoctorPage(),
            ),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50,
              ),
              const SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
