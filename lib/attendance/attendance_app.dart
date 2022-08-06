import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:responsive_layout/layouts/splash_screen.dart';
import '../data/app_constants.dart';
import '../widgets/category_tile.dart';
import 'dashboard/dashboard_content.dart';

class AttendanceApp extends StatefulWidget {
  static const String id = '/attendance_app';
  const AttendanceApp({Key? key}) : super(key: key);

  @override
  State<AttendanceApp> createState() => _AttendanceAppState();
}

class _AttendanceAppState extends State<AttendanceApp> {
  String? today;
  String? timeString;
  String? userEmail;

  @override
  void initState() {
    userEmail = FirebaseAuth.instance.currentUser!.email;
    today = DateFormat('EEEE').format(DateTime.now());
    timeString = _formatDateTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => getTime());
    super.initState();
  }

  void getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      timeString = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('MM/dd/yyyy hh:mm:ss').format(dateTime);
  }

  Future signOut(context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushNamedAndRemoveUntil(
        context, SplashScreen.id, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff1F1C43),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 50.0,
                      ),
                      child: SizedBox(
                        child: ListTile(
                          leading: const FaIcon(
                            FontAwesomeIcons.userClock,
                            color: Colors.white,
                          ),
                          title: Text(
                            MediaQuery.of(context).size.width > 1200
                                ? 'Staff Attendance Tracking System'
                                : "",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 13.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CategoryTile(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.house,
                              color: Colors.white,
                            ),
                            tileName: 'Dashboard',
                            categoryTileColor: categoryTileColor1,
                            onHover: (value) => setState(
                              () {
                                value
                                    ? categoryTileColor1 =
                                        Colors.white.withOpacity(0.2)
                                    : categoryTileColor1 = Colors.transparent;
                              },
                            ),
                          ),
                          CategoryTile(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.clock,
                              color: Colors.white,
                            ),
                            tileName: 'Timesheet',
                            categoryTileColor: categoryTileColor2,
                            onHover: (value) => setState(() {
                              value
                                  ? categoryTileColor2 =
                                      Colors.white.withOpacity(0.2)
                                  : categoryTileColor2 = Colors.transparent;
                            }),
                          ),
                          CategoryTile(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.usersGear,
                              color: Colors.white,
                            ),
                            tileName: 'Admin',
                            categoryTileColor: categoryTileColor3,
                            onHover: (value) => setState(
                              () {
                                value
                                    ? categoryTileColor3 =
                                        Colors.white.withOpacity(0.2)
                                    : categoryTileColor3 = Colors.transparent;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Center(
                        child: SizedBox(
                          height: 50.0,
                          width: double.infinity,
                          child: CategoryTile(
                            icon: const FaIcon(
                              FontAwesomeIcons.arrowRightFromBracket,
                              color: Colors.white,
                            ),
                            tileName: 'Logout',
                            categoryTileColor: categoryTileColor4,
                            onPressed: () {
                              signOut(context);
                            },
                            onHover: (value) => setState(
                              () {
                                value
                                    ? categoryTileColor4 =
                                        Colors.white.withOpacity(0.2)
                                    : categoryTileColor4 = Colors.transparent;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: SizedBox(
              child: DashboardContent(
                userEmail: userEmail,
                today: today,
                timeString: timeString,
                onHover: (value) {
                  value
                      ? setState(
                          () {
                            submitLogColor =
                                const Color.fromARGB(255, 58, 53, 122);
                          },
                        )
                      : setState(() {
                          submitLogColor = const Color(0xff1f1c43);
                        });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
