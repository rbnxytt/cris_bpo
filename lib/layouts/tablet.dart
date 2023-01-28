import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrawer(context, _scrollController!),
      backgroundColor: myDefaultBackground,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                (context, index) => SizedBox(
                    width: double.infinity, child: tabletPageContent[index]),
                childCount: 2),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 30.0, crossAxisCount: 2, childAspectRatio: 1),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 3 / 1),
            delegate: SliverChildListDelegate(
              [
                SizedBox(width: double.infinity, child: tabletPageContent[2]),
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
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text(
                                'We Offer\nBest Services',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 50.0),
                              child: Text(
                                'The happiness and satisfaction we feel is double the happiness and satisfaction of every client that we are working with.',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontStyle: FontStyle.italic),
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
                                title: Text('Customer Care & Support'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.check,
                                  color: Colors.red,
                                ),
                                title: Text('Account Management'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.check,
                                  color: Colors.red,
                                ),
                                title: Text('Billing and Dispute Management'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                leading: FaIcon(
                                  FontAwesomeIcons.check,
                                  color: Colors.red,
                                ),
                                title: Text('Technical Support'),
                              ),
                            ),
                            Spacer()
                          ],
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
                            fontSize: 30.0, fontWeight: FontWeight.w600),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Have you got an exciting project for us to talk about?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
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
                            // InkWell(
                            //   onTap: () {},
                            //   child: Row(
                            //     children: const [
                            //       FaIcon(
                            //         FontAwesomeIcons.linkedinIn,
                            //         color: Colors.white,
                            //       ),
                            //       Padding(
                            //         padding: EdgeInsets.only(left: 15.0),
                            //         child: Text(
                            //           'LinkedIn',
                            //           style: TextStyle(color: Colors.white),
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            // InkWell(
                            //   onTap: () {},
                            //   child: Row(
                            //     children: const [
                            //       FaIcon(
                            //         FontAwesomeIcons.twitter,
                            //         color: Colors.white,
                            //       ),
                            //       Padding(
                            //         padding: EdgeInsets.only(left: 15.0),
                            //         child: Text(
                            //           'Twitter',
                            //           style: TextStyle(color: Colors.white),
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
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
