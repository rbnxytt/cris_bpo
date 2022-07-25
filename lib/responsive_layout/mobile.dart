import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_layout/constants.dart';
import 'package:universal_html/html.dart' as html;

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();

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
                    width: double.infinity, child: mobilePageContent[index]),
                childCount: 3),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 30.0, crossAxisCount: 1, childAspectRatio: 1),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 3 / 2),
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'We Offer\nBest Services',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'The happiness and satisfaction we feel is double the happiness and satisfaction of every client that we are working with.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      Divider(
                        height: 0.5,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.check,
                          color: Colors.red,
                        ),
                        title: Text('Customer Care & Support'),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.check,
                          color: Colors.red,
                        ),
                        title: Text('Account Management'),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.check,
                          color: Colors.red,
                        ),
                        title: Text('Billing and Dispute Management'),
                      ),
                      ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.check,
                          color: Colors.red,
                        ),
                        title: Text('Technical Support'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Divider(
                          height: 0.5,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                          primary: Colors.red,
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () {},
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
                  aspectRatio: 4 / 1,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                            //   child: const FaIcon(
                            //     FontAwesomeIcons.linkedinIn,
                            //     color: Colors.white,
                            //   ),
                            // ),
                            // InkWell(
                            //   onTap: () {},
                            //   child: const FaIcon(
                            //     FontAwesomeIcons.twitter,
                            //     color: Colors.white,
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
