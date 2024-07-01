import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:gouthamsedtech/pages/course_page.dart';
import 'package:gouthamsedtech/pages/home_page.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20.0,
        ),
        child: GNav(
          backgroundColor: Colors.black,
          haptic: true,
          color: Colors.white,
          activeColor: Colors.purple,
          tabBackgroundColor: Colors.grey.shade400,
          tabActiveBorder: Border.all(color: Colors.black, width: 1),
          gap: 8,
          padding: const EdgeInsets.all(14),
          onTabChange: (index) => navigateBottomBar(index),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(
                      title: 'Home Page',
                    ),
                  ),
                );
              },
            ),
            GButton(
              icon: Icons.book,
              text: "Courses",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CoursePage(
                      title: 'Course Page',
                    ),
                  ),
                );
              },
            ),
            GButton(
              icon: Icons.money,
              text: "Payment",
              onPressed: () {
                //Navigator.push(
                //  context,
                //  MaterialPageRoute(
                //    builder: (context) => const HomePage(
                //      title: 'Home Page',
                //    ),
                //  ),
                //);
              },
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",
              onPressed: () {
                //Navigator.push(
                //  context,
                //  MaterialPageRoute(
                //    builder: (context) => const SettingsPage(
                //      title: 'Settings Page',
                //    ),
                //  ),
                //);
              },
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}

  navigateBottomBar(int index) {}
}
