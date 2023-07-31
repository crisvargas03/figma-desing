import 'package:figma_skeleton_app/constants/colors.dart';
import 'package:figma_skeleton_app/pages/apointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});
  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      const Appointment(),
      const Text('Alerts Screen'),
      const Text('Health Screen'),
      const Text('Profile Screen'),
    ];

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            Text(widgetOptions.elementAt(selectedIndex).runtimeType.toString()),
        backgroundColor: white,
        titleTextStyle: const TextStyle(
          color: primaryBlue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
        leading: const BackButton(
          color: primaryBlue,
        ),
      ),
      body: Center(child: widgetOptions.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryBlue,
        unselectedItemColor: gray,
        selectedItemColor: white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell_fill),
            label: "Alerts",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart_fill),
            label: "Health",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
