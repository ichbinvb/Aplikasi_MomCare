import 'package:flutter/material.dart';
import 'package:my_app/screens/crud_screen.dart';
import 'package:my_app/screens/first_screen.dart';
import 'package:my_app/screens/helpcenter.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/setting_screen.dart';
import 'package:my_app/screens/profile_screen.dart';
import 'package:my_app/components/asset_image_widget.dart';
import 'package:my_app/screens/news_feed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 81, 112, 82),
        hintColor: const Color.fromARGB(255, 122, 113, 101),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 105, 202, 205),
          foregroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    Homescreen(title: 'home'),
    SettingScreen(),
    ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Home',
    'Settings',
    'Profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      body: _screens[_selectedIndex],
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).appBarTheme.backgroundColor,
          child: ListView(
            children: [
              const AssetImageWidget(
                imagePath: 'assets/images/MomCare.png',
                width: 500,
                height: 200,
                fit: BoxFit.cover,
              ),
              ListTile(
                leading: const Icon(Icons.help_center),
                title: const Text('Help Center'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HelpScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Latihan API'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LongListScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Latihan CRUD'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NoteScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
