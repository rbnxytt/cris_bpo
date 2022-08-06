import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.userEmail,
  }) : super(key: key);

  final String? userEmail;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
              SizedBox(
                width: 300.0,
                height: 100.0,
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            userEmail!,
                            style: const TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            'Agent',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0630C6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: Container(
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
