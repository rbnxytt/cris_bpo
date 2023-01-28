import 'package:flutter/material.dart';

class MyTableData extends StatelessWidget {
  const MyTableData({
    Key? key,
    required this.date,
    required this.lineOfBusiness,
    required this.startTime,
    required this.breakTime,
    required this.finishTime,
    required this.status,
  }) : super(key: key);
  final String? date;
  final String? lineOfBusiness;
  final String? startTime;
  final String? breakTime;
  final String? finishTime;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Table(
        children: [
          TableRow(
            children: [
              Center(child: Text(date!)),
              Center(child: Text(lineOfBusiness!)),
              Center(child: Text(startTime!)),
              Center(child: Text(breakTime!)),
              Center(child: Text(finishTime!)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: status! == 'Working'
                            ? const Color(0xff8CF99D)
                            : status! == 'On Break'
                                ? const Color(0xff8BC7FF)
                                : const Color(0xffF88D8D),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(status!),
                    ),
                  ])
            ],
          ),
          TableRow(
            children: [
              const SizedBox(
                width: double.infinity,
              ),
              const SizedBox(
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff8CF99D),
                  ),
                  onPressed: () {},
                  child: const Text('Check-In'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff8BC7FF),
                  ),
                  onPressed: () {},
                  child: const Text('Break'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF88D8D),
                  ),
                  onPressed: () {},
                  child: const Text('Check-Out'),
                ),
              ),
              const SizedBox(
                width: double.infinity,
              ),
            ],
          )
        ],
      ),
    );
  }
}
