import 'package:flutter_web/material.dart';
import 'package:portfolio_web/components/sliver_bar.dart';
import 'package:portfolio_web/resources/skills_list.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverBar(
                  titleText: 'Skills',
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            skills[index]['logo'],
                          ),
                          Text(
                            skills[index]['title'],
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                            ),
                          ),
                        ],
                      );
                    },
                    childCount: skills.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
