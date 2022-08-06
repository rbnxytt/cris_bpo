import 'package:flutter/material.dart';
import 'package:responsive_layout/attendance/dashboard/subheader.dart';
import 'package:responsive_layout/attendance/dashboard/submit_log_button.dart';

import '../../data/app_constants.dart';
import '../../data/my_table_data.dart';
import 'header.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({
    Key? key,
    required this.userEmail,
    required this.today,
    required this.timeString,
    this.onHover,
  }) : super(key: key);

  final String? userEmail;
  final String? today;
  final String? timeString;
  final void Function(bool value)? onHover;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Header(userEmail: userEmail),
        SubHeader(today: today, timeString: timeString),
        const SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Today\'s Schedule',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
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
                  children: [
                    TableRow(
                      children: [
                        for (String header in tableDataHeaders)
                          Center(
                            child: Text(
                              header,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 17, 12, 80),
                              ),
                            ),
                          )
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
        SubmitLogButton(onHover: onHover)
      ],
    );
  }
}
