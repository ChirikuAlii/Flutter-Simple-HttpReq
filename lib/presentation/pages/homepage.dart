import 'package:flutter/material.dart';
import 'package:simple_consume_api/data/remote/api_service_impl.dart';
import 'package:simple_consume_api/data/remote/model/news_response.dart';
import 'package:simple_consume_api/data/remote/model/news_response_entity.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<NewsResponseEntity> _newsResponse;

  @override
  void initState() {
    _newsResponse = ApiServiceImpl().getNews("tesla", "", "publishedAt");
    super.initState();
  }

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
              "News App",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder<NewsResponseEntity>(
            future: _newsResponse,
            builder: (context, snapshot) {
              if(snapshot.hasData){
                return ListView.builder(
                    itemCount: snapshot.data?.articles?.length,
                    itemBuilder: (context,index){
                      var article = snapshot.data?.articles?.elementAt(index);

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        //  color: Colors.blueAccent,
                        child: Row(
                          children: [
                            Container(
                              // image news
                              margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                              width: 106,
                              height: 106,
                              child: Image.network(
                                  article?.urlToImage ?? "",
                                  fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                //        color: Colors.greenAccent,
                                child: Container(
                                  height: 106,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          article?.title ?? "",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(article?.publishedAt ?? "")
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                });
              }else{
                return CircularProgressIndicator();
              }

            }),
      ),
    );
  }
}
