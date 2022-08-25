import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_layout/attendance/login.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController!.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  void scrollToEnd() {
    _scrollController!.animateTo(_scrollController!.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  void scrollToTop() {
    _scrollController!.animateTo(0,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  void scrollToAbout() {
    _scrollController!.animateTo(569,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  void scrollToServices() {
    _scrollController!.animateTo(948,
        duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            toolbarHeight: 80.0,
            backgroundColor: myDefaultBackground,
            elevation: 1,
            centerTitle: true,
            title: Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 150.0, right: 150.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      html.window.location.reload();
                    },
                    child: Image.asset(
                      'assets/images/logo.jpeg',
                      height: 50.0,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        scrollToTop();
                      },
                      child: Text('Home', style: navStyle)),
                  TextButton(
                      onPressed: () {
                        scrollToAbout();
                      },
                      child: Text('About', style: navStyle)),
                  TextButton(
                      onPressed: () {
                        scrollToServices();
                      },
                      child: Text('Services', style: navStyle)),
                  TextButton(
                      onPressed: () {
                        scrollToEnd();
                      },
                      child: Text('Contact Us', style: navStyle)),
                  ElevatedButton(
                    onPressed: () {
                      // signInPage(context);
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Agent Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index) => SizedBox(
                    width: double.infinity, child: desktopPageContent[index]),
                childCount: 2),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 30.0, crossAxisCount: 2, childAspectRatio: 1),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 3 / 1),
            delegate: SliverChildListDelegate(
              [
                SizedBox(width: double.infinity, child: desktopPageContent[2]),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 100.0),
                              child: Text(
                                'We Offer\nBest Services',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 40.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 100.0),
                              child: Text(
                                'The happiness and satisfaction we feel is double the happiness and satisfaction of every client that we are working with.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: VerticalDivider(
                          width: 0.5,
                          color: Colors.black54,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Spacer(),
                              Expanded(
                                child: ListTile(
                                  leading: FaIcon(
                                    FontAwesomeIcons.check,
                                    color: Colors.red,
                                  ),
                                  title: Text(
                                    'Customer Care & Support',
                                    style: TextStyle(fontSize: 24.0),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  leading: FaIcon(
                                    FontAwesomeIcons.check,
                                    color: Colors.red,
                                  ),
                                  title: Text('Account Management',
                                      style: TextStyle(fontSize: 24.0)),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  leading: FaIcon(
                                    FontAwesomeIcons.check,
                                    color: Colors.red,
                                  ),
                                  title: Text('Billing and Dispute Management',
                                      style: TextStyle(fontSize: 24.0)),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  leading: FaIcon(
                                    FontAwesomeIcons.check,
                                    color: Colors.red,
                                  ),
                                  title: Text('Technical Support',
                                      style: TextStyle(fontSize: 24.0)),
                                ),
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Divider(
                        height: 0.5,
                        color: Colors.black54,
                      ),
                      const Text(
                        'Get In Touch',
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.w700),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 150.0),
                        child: Text(
                          'Have you got an exciting project for us to talk about?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () async {
                          String email = 'icvm05@gmail.com';
                          String subject = 'CRIS BPO web - Inquiry';
                          String body = '';

                          Uri emailUrl = Uri.parse(
                              "mailto:$email?subject=$subject&body=$body");

                          if (await canLaunchUrl(emailUrl)) {
                            await launchUrl(emailUrl);
                          } else {
                            throw "Error occured sending an email";
                          }
                        },
                        child: const Text(
                          'Contact Us',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                AspectRatio(
                  aspectRatio: 6 / 1,
                  child: Container(
                    color: Colors.red,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                html.window.open(
                                    'https://www.facebook.com/Cris-Business-Process-Outsourcing-Services-109935727945703',
                                    '_blank');
                              },
                              child: Row(
                                children: const [
                                  FaIcon(
                                    FontAwesomeIcons.facebookF,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Facebook',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.copyright,
                              color: Colors.white,
                              size: 14.0,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              '2022 CRIS BPO',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
