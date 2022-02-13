import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage(
      {required this.idNews,
      required this.titleNews,
      required this.image,
      required this.author,
      required this.caption});

  final String idNews;
  final String titleNews;
  final String image;
  final String author;
  final String caption;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: Container(
          color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          height: 82,
          child: Center(
              child: Container(
            margin: EdgeInsets.fromLTRB(0, 82 / 3, 0, 0),
            child: Text(
              "Detail News",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(16, 24, 16, 16),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(16, 8, 16, 24),
              child: Text(
                widget.titleNews,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 3,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
              width: MediaQuery.of(context).size.width,
              child: Text(
                widget.author,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 24),
              child: Text(
                widget.caption,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    height: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
