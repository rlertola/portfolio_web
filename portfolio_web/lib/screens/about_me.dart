import 'package:flutter_web/material.dart';
import 'package:portfolio_web/components/padding_text.dart';
import 'package:portfolio_web/components/big_button.dart';
import 'package:portfolio_web/resources/constants.dart';
import 'package:portfolio_web/components/sliver_bar.dart';
import 'dart:html' as html;
// import 'package:url_launcher/url_launcher.dart';
import 'cert-viewer.dart';
import 'skills.dart';

class AboutMe extends StatelessWidget {
  // url_launcher function for github link.
  void launchGitHub() async {
    await html.window.open(kGitHubUrl, 'GitHub Repos');
    // if (await canLaunch(kGitHubUrl)) {
    //   await launch(kGitHubUrl);
    // } else {
    //   throw 'Could not launch $kGitHubUrl';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverBar(
                titleText: 'About Me',
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    PaddingText(
                      padding: EdgeInsets.all(20.0),
                      text: kAboutMeDescription,
                      size: 20.0,
                      family: 'Raleway',
                      color: Colors.white,
                    ),
                    BigButton(
                      title: 'Skills',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Skills(),
                          ),
                        );
                      },
                    ),
                    BigButton(
                      title: 'GitHub',
                      onPress: launchGitHub,
                    ),
                    BigButton(
                      title: 'Resume',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CertViewer(
                                  file: kResume,
                                  text: 'Resume',
                                ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
