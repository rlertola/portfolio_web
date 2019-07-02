import 'package:flutter_web/material.dart';

// import 'package:zoomable_image/zoomable_image.dart';

class CertViewer extends StatelessWidget {
  CertViewer({this.file, this.text});

  final String file;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'Raleway',
            color: Colors.grey,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Image.asset(file),
          // child: ZoomableImage(
          //   AssetImage(file),
          //   backgroundColor: Colors.grey[850],
          // ),
        ),
      ),
    );
  }
}
