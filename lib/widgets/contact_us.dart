import 'package:flutter/material.dart';

class ContactUsForm extends StatelessWidget {
  const ContactUsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple[200]!, Colors.amber],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(10.0)),
              height: 550,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Contact Us',
                    style: TextStyle(color: Colors.redAccent, fontSize: 18.0),
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
