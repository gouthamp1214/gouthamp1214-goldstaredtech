import 'package:flutter/material.dart';
import 'package:gouthamsedtech/components/bottom_nav_bar.dart';
import 'package:gouthamsedtech/courses/android.dart';
import 'package:gouthamsedtech/courses/artificial_intelligence.dart';
import 'package:gouthamsedtech/courses/cloud_computing.dart';
import 'package:gouthamsedtech/courses/cyber_security.dart';
import 'package:gouthamsedtech/courses/data_science.dart';
import 'package:gouthamsedtech/courses/devops.dart';
import 'package:gouthamsedtech/courses/flutter.dart';
import 'package:gouthamsedtech/courses/full_stack_web_development.dart';
import 'package:gouthamsedtech/courses/human_resources.dart';
import 'package:gouthamsedtech/courses/ios.dart';
import 'package:gouthamsedtech/courses/java.dart';
import 'package:gouthamsedtech/courses/machine_learning.dart';
import 'package:gouthamsedtech/courses/python.dart';
import 'package:gouthamsedtech/courses/testing.dart';
import 'package:gouthamsedtech/pages/course_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        elevation: 0,
        title: const Text(
          'GoldStar Ed Tech',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.push(
              //  context,
              //  MaterialPageRoute(builder: (context) => StudentPage()),
              //);
            },
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'GoldStar Ed Tech',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Home Page',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
              ),
              onTap: () {
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
            ListTile(
              title: const Text(
                'Course Page',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
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
            ListTile(
              title: const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'About Us',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Welcome to GoldStar Ed Tech',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Python Course
                        GestureDetector(
                          // When the child is tapped, take to python course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Python(),
                              ),
                            );
                          },
                          // The custom button for python course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Python',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Artificial Intelligence Course
                        GestureDetector(
                          // When the child is tapped, take to Artificial Intelligence course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ArtificialIntelligence(),
                              ),
                            );
                          },
                          // The custom button for Artificial Intelligence course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            //padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Artificial Intelligence',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Machine Learning Course
                        GestureDetector(
                          // When the child is tapped, take to Machine Learning course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MachineLearning(),
                              ),
                            );
                          },
                          // The custom button for Machine Learning course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Machine Learning',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Full Stack Web Development Course
                        GestureDetector(
                          // When the child is tapped, take to full stack web development course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FullStackWebDevelopment(),
                              ),
                            );
                          },
                          // The custom button for full stack web development course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'Full Stack Web Development',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Flutter Course
                        GestureDetector(
                          // When the child is tapped, take to flutter course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Flutter(),
                              ),
                            );
                          },
                          // The custom button for flutter course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Flutter',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Android Course
                        GestureDetector(
                          // When the child is tapped, take to Android course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Android(),
                              ),
                            );
                          },
                          // The custom button for Android course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Android',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // iOS Course
                        GestureDetector(
                          // When the child is tapped, take to iOS course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Ios(),
                              ),
                            );
                          },
                          // The custom button for Android course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'iOS',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Data Science Course
                        GestureDetector(
                          // When the child is tapped, take to data science course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DataScience(),
                              ),
                            );
                          },
                          // The custom button for data science course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Data Science',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Cloud Computing Course
                        GestureDetector(
                          // When the child is tapped, take to cloud computing course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CloudComputing(),
                              ),
                            );
                          },
                          // The custom button for cloud computing course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Cloud Computing',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // DevOps Course
                        GestureDetector(
                          // When the child is tapped, take to devops course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DevOps(),
                              ),
                            );
                          },
                          // The custom button for devops course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'DevOps',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Cyber Security Course
                        GestureDetector(
                          // When the child is tapped, take to cyber security course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CyberSecurity(),
                              ),
                            );
                          },
                          // The custom button for cyber security course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Cyber Security',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Testing Course
                        GestureDetector(
                          // When the child is tapped, take to Testing course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Testing(),
                              ),
                            );
                          },
                          // The custom button for Testing course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Testing',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Java Course
                        GestureDetector(
                          // When the child is tapped, take to java course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Java(),
                              ),
                            );
                          },
                          // The custom button for java course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Java',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Human Resources Course
                        GestureDetector(
                          // When the child is tapped, take to human resources course page
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HumanResources(),
                              ),
                            );
                          },
                          // The custom button for human resources course
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 200,
                            height: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade200,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Human Resources',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Sized box
            const SizedBox(height: 15),

            // Course description
            Title(
              color: Colors.black,
              child: const Text(
                'Our Services',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 350,
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple.shade200,
                      ),
                      child: const Center(
                        child: Text(
                          'Resume building',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 350,
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple.shade200,
                      ),
                      child: const Center(
                        child: Text(
                          'Internship',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 350,
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple.shade200,
                      ),
                      child: const Center(
                        child: Text(
                          'Jobs',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 350,
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple.shade200,
                      ),
                      child: const Center(
                        child: Text(
                          'Career',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 350,
                      height: 100,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple.shade200,
                      ),
                      child: const Center(
                        child: Text(
                          'Community',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar

      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(_selectedIndex),
      ),
    );
  }
}
