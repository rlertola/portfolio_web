import 'package:flutter_web/material.dart';
import 'package:portfolio_web/components/sliver_bar.dart';
import 'package:portfolio_web/components/sliver_card.dart';
import 'project-page.dart';
import 'package:portfolio_web/resources/projects_list.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverBar(
                titleText: 'Projects',
              ),
              Container(
                // width: MediaQuery.of(context).size.width * 0.5,
                child: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return SliverCard(
                        routeTo: Project(
                          index: index,
                        ),
                        imagePath: projects[index]['main_image'],
                        titleText: projects[index]['project_name'],
                        context: context,
                      );
                    },
                    childCount: projects.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
