import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_layout/login.dart';
import 'package:universal_html/html.dart' as html;

Color myDefaultBackground = Colors.white;

TextStyle navStyle = const TextStyle(color: Colors.black87, fontSize: 14.0);

var myAppBar = AppBar(
  iconTheme: const IconThemeData(color: Colors.black),
  elevation: 1,
  backgroundColor: myDefaultBackground,
  title: Image.asset(
    'assets/images/logo.jpeg',
    height: 45.0,
  ),
);

Widget myDrawer(context, ScrollController scrollController) => Drawer(
      backgroundColor: myDefaultBackground,
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset(
                  'assets/images/logo.jpeg',
                  height: 40.0,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                scrollController.animateTo(
                    scrollController.position.minScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              child: const ListTile(
                leading: Icon(Icons.home),
                title: Text('H o m e'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                scrollController.animateTo(
                    MediaQuery.of(context).size.width >
                            MediaQuery.of(context).size.height
                        ? 450
                        : 750,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              child: const ListTile(
                leading: Icon(Icons.people),
                title: Text('A b o u t'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                scrollController.animateTo(
                    MediaQuery.of(context).size.width >
                            MediaQuery.of(context).size.height
                        ? 750
                        : 1150,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              child: const ListTile(
                leading: Icon(Icons.headphones),
                title: Text('S e r v i c e s'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                scrollController.animateTo(
                    scrollController.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
              child: const ListTile(
                leading: Icon(Icons.phone),
                title: Text('C o n t a c t  U s'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, left: 22.0, right: 22.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  signInPage(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  minimumSize: const Size(double.infinity, 50.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'S i g n  I n',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Lottie.asset('assets/images/support-guy.json',
                  frameRate: FrameRate.max, fit: BoxFit.contain),
            )
          ],
        ),
      ),
    );

final List<dynamic> mobilePageContent = [
  Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Expanded(
          flex: 2,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: SizedBox(
                child: Text(
                  'Excellent service means excellent business.',
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Right skills and passion, excellent results.',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              html.window.open(
                  'https://www.facebook.com/Cris-Business-Process-Outsourcing-Services-109935727945703',
                  '_blank');
            },
            child: Container(
              height: 50,
              width: 180,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Learn More',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
  Lottie.asset(
    'assets/images/support-man.json',
    frameRate: FrameRate.max,
    fit: BoxFit.contain,
  ),
  Container(
    width: double.infinity,
    color: const Color(0xffD9D9D9),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Expanded(
            flex: 2,
            child: Text(
              'Who are we?',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              'We are a dynamic team of highly capable freelancers who are equipped with the right skills and driven by the passion to deliver excellent results.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
              maxLines: 4,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'We strongly believe that things should be done using the best ways possible with integrity as our main guide.',
              textAlign: TextAlign.center,
              maxLines: 4,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    ),
  )
];

final List<dynamic> tabletPageContent = [
  Column(
    children: [
      const Spacer(),
      const Center(
        child: SizedBox(
          width: 300.0,
          child: Text(
            'Excellent service means excellent business.',
            style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      const Spacer(),
      const SizedBox(
        width: 300.0,
        child: Text(
          'Right skills and passion, excellent results.',
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic),
        ),
      ),
      const Spacer(),
      Expanded(
        child: Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              html.window.open(
                  'https://www.facebook.com/Cris-Business-Process-Outsourcing-Services-109935727945703',
                  '_blank');
            },
            child: Container(
              height: 50,
              width: 180,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Learn More',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
      const Spacer(),
    ],
  ),
  Lottie.asset(
    'assets/images/support-man.json',
    frameRate: FrameRate.max,
    fit: BoxFit.contain,
  ),
  Container(
    width: double.infinity,
    color: const Color(0xffD9D9D9),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Expanded(
            flex: 2,
            child: Text(
              'Who are we?',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              'We are a dynamic team of highly capable freelancers who are equipped with the right skills and driven by the passion to deliver excellent results.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
              maxLines: 4,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'We strongly believe that things should be done using the best ways possible with integrity as our main guide.',
              textAlign: TextAlign.center,
              maxLines: 4,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    ),
  )
];

final List<dynamic> desktopPageContent = [
  Column(
    children: [
      const Spacer(),
      const Center(
        child: SizedBox(
          width: 400.0,
          child: Text(
            'Excellent service means excellent business.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      const Spacer(),
      const SizedBox(
        width: 400.0,
        child: Text(
          'Right skills and passion, excellent results.',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic),
        ),
      ),
      const Spacer(),
      Expanded(
        child: Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              html.window.open(
                  'https://www.facebook.com/Cris-Business-Process-Outsourcing-Services-109935727945703',
                  '_blank');
            },
            child: Container(
              height: 60,
              width: 180,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Learn More',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
      const Spacer(),
    ],
  ),
  Lottie.asset(
    'assets/images/support-man.json',
    frameRate: FrameRate.max,
    fit: BoxFit.contain,
  ),
  Container(
    width: double.infinity,
    color: const Color(0xffD9D9D9),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Expanded(
            flex: 2,
            child: Text(
              'Who are we?',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 120.0),
              child: Text(
                'We are a dynamic team of highly capable freelancers who are equipped with the right skills and driven by the passion to deliver excellent results.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
                maxLines: 4,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 120.0),
              child: Text(
                'We strongly believe that things should be done using the best ways possible with integrity as our main guide.',
                textAlign: TextAlign.center,
                maxLines: 4,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
    ),
  )
];

void signInPage(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const Material(
      child: LoginPage(),
    ),
  );
}
