import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Gronet")),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(labelText: "Address  "),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(labelText: "Locality  "),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(labelText: "Items Required  "),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(labelText: "Quantity  "),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(labelText: "Per Day  "),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: RaisedButton(
                    onPressed: null,
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blueAccent,
                    disabledColor: Colors.blueAccent,
                  )),
            ],
          )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _launchURL,
          tooltip: 'Increment',
          child: Icon(Icons.chat),
        ),
      ),
    );
  }

  Future<void> _launchURL() async {
    const url =
        "https://integrations.au-syd.assistant.watson.cloud.ibm.com/web/public/36c00cc8-1270-4a2c-8fea-ab2a96be7f8b";
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
