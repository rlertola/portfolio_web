import 'package:flutter_web/material.dart';

class SliverBar extends StatelessWidget {
  SliverBar({this.titleText});

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xFF303030),
      expandedHeight: 200.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              // begin: Alignment.topLeft,
              // end: Alignment.bottomCenter,
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                // Color(0xFFb2ebf9),
                Color(0xFF91b0b7),
                // Colors.grey[500],
                Colors.black12,
              ],
            ),
            // gradient: RadialGradient(
            //   center: Alignment.topRight,
            //   radius: 1.7,
            //   colors: [
            //     // Color(0xFFb2ebf9),
            //     Color(0xFF91b0b7),
            //     // Colors.grey[500],
            //     Colors.black54,
            //   ],
            // ),
          ),
        ),
        title: Text(
          titleText,
          style: TextStyle(
            color: Color(0xFFb2ebf9),
            fontWeight: FontWeight.w100,
            fontFamily: 'Raleway',
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }
}
