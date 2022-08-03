import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:intl/intl.dart';
import 'package:responsive_layout/data/app_constants.dart';
import 'package:responsive_layout/data/my_table_data.dart';
import 'package:responsive_layout/widgets/category_tile.dart';

class AttendanceApp extends StatefulWidget {
  static const String id = '/attendance_app';
  const AttendanceApp({Key? key}) : super(key: key);

  @override
  State<AttendanceApp> createState() => _AttendanceAppState();
}

class _AttendanceAppState extends State<AttendanceApp> {
  String currentDate = DateFormat('MMMM d, yyyy').format(DateTime.now());
  String today = DateFormat('EEEE').format(DateTime.now());

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
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 50.0,
                      ),
                      child: SizedBox(
                        child: ListTile(
                          leading: FaIcon(
                            FontAwesomeIcons.userClock,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Staff Attendance\nTracking System',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.0),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 10,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/logo.jpeg',
                              height: 48.0,
                            ),
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        'Robert Smith',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        'Agent',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff0630C6),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/images/profile.jpg',
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Lottie.asset('assets/images/hotcoffee.json',
                              height: 100.0, fit: BoxFit.contain),
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              'Good morning Robert !',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              currentDate,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14.0),
                            ),
                            Text(
                              'Today is $today',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16.0),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        'Today\'s Schedule',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        const Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Table(
                            children: const [
                              TableRow(
                                children: [
                                  Center(child: Text('Date')),
                                  Center(child: Text('Line Of Business')),
                                  Center(child: Text('Start Time')),
                                  Center(child: Text('Break')),
                                  Center(child: Text('Finish Time')),
                                  Center(child: Text('Status'))
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                        const MyTableData(
                          date: 'July 28, 2022',
                          lineOfBusiness: 'SKRN',
                          startTime: '2:00 AM',
                          breakTime: '30 mins',
                          finishTime: '10:00 AM',
                          status: 'Working',
                        ),
                        const Divider(
                          height: 1.0,
                          color: Colors.black,
                        ),
                        const MyTableData(
                          date: 'July 28, 2022',
                          lineOfBusiness: 'SKRN',
                          startTime: '2:00 AM',
                          breakTime: '30 mins',
                          finishTime: '10:00 AM',
                          status: 'On Break',
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TextButton(
                          onPressed: () {},
                          onHover: (value) {
                            value
                                ? setState(
                                    () {
                                      submitLogColor = const Color.fromARGB(
                                          255, 58, 53, 122);
                                    },
                                  )
                                : setState(() {
                                    submitLogColor = const Color(0xff1f1c43);
                                  });
                          },
                          child: Container(
                            height: 50.0,
                            width: 200,
                            color: submitLogColor,
                            child: const Center(
                              child: Text(
                                'Submit Log',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
