import 'package:flutter/material.dart';
import 'guide_list_screen.dart';
import 'favorite_screen.dart';
import 'welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    GuideListScreen(),     // Trang chủ (tin tức)
    FavoriteScreen(),      // Yêu thích
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Họ tên: Nguyễn Xuân Khánh - MSSV: 20223716"),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Trang chủ"),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Yêu thích"),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Thoát"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => WelcomeScreen()),
                      (route) => false,
                );
              },
            ),
          ],
        ),
      ),

      body: _pages[_selectedIndex],
    );
  }
}
