import 'package:flutter/material.dart';

import '../../data/app_constants.dart';

class SubmitLogButton extends StatelessWidget {
  const SubmitLogButton({
    Key? key,
    required this.onHover,
  }) : super(key: key);

  final void Function(bool value)? onHover;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextButton(
            onPressed: () {},
            onHover: (value) => onHover,
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
    );
  }
}
