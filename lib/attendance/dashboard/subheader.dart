import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({
    Key? key,
    required this.today,
    required this.timeString,
  }) : super(key: key);

  final String? today;
  final String? timeString;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
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
                'Today is $today',
                style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 16.0),
              ),
              Text(timeString!)
            ],
          ),
        ),
      ],
    );
  }
}
