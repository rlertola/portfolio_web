import 'package:flutter_web/material.dart';
import 'package:portfolio_web/components/sliver_bar.dart';
import 'cert-viewer.dart';
import 'package:portfolio_web/components/sliver_card.dart';
import 'package:portfolio_web/resources/certificates_list.dart';

class Certificates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverBar(
                titleText: 'Certificates',
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return SliverCard(
                      routeTo: CertViewer(
                        file: certificates[index]['image'],
                        text: certificates[index]['title'],
                      ),
                      imagePath: certificates[index]['image'],
                      titleText: certificates[index]['title'],
                      context: context,
                    );
                  },
                  childCount: certificates.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
