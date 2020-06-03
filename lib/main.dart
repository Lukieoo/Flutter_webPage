import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/search.dart';
import 'dart:js' as js;

void main() => runApp(MaterialApp(
      title: 'Anioncode by Lukieoo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        // Color(0xFFF8FBFF),
        Color(0xFFFfffff),
        // Color(0xFFFCFDFD),
        Color(0xFFFfffff),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.network("assets/image.png", scale: .85),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hello!",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                          color: Color(0xFF8591B0))),
                  RichText(
                    text: TextSpan(
                        text: "Wellcome to ",
                        style:
                            TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: "Anion Code",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: RichText(
                      text: TextSpan(
                       text:"I am Android Developer / Flutter Developer who create beautiful apps for your IOS/Android device.",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
                        ),
                        children: [
                          TextSpan(
                              text: "\n\n Contact:  pawkrzysciak@gmail.com",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87))
                        ]
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Wrap(
                    children: [
                      Row(
                        children: [

                          SizedBox(width: 20,),
                          SizedBox(
                              child: FloatingActionButton(
                                backgroundColor: Colors.white10,
                                child: Center(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network("assets/github.png"),
                                )),
                                onPressed: () {

                                  js.context.callMethod("open", ["https://github.com/Lukieoo"]);
//                            _launchURL("https://github.com/Lukieoo");
                                },
                              ))
                          ,
                          SizedBox(width: 20,),
                          SizedBox(
                              child: FloatingActionButton(
                                backgroundColor: Colors.white10,
                                child: Center(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network("assets/youtube.png"),
                                )),
                                onPressed: () {
                                  js.context.callMethod("open", ["https://www.youtube.com/channel/UCseP9k1DwSAqzZ-iyeAlTvg"]);
                                },
                              ))
                          ,
                          SizedBox(width: 20,),
                          SizedBox(
                              child: FloatingActionButton(
                                backgroundColor: Colors.white10,

                                child: Center(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network("assets/fb.png"),
                                )),
                                onPressed: () {
                                  js.context.callMethod("open", ["https://www.facebook.com/Anion-Code-115934359788737"]);

                                },
                              ))
                          ,
                          SizedBox(width: 20,),
                          SizedBox(
                              child: FloatingActionButton(
                                backgroundColor: Colors.white10,

                                child: Center(child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network("assets/google.png"),
                                )),
                                onPressed: () {
                                  js.context.callMethod("open", ["https://play.google.com/store/apps/dev?id=5300491392807005874"]);

                                },
                              ))
                          ,
                          SizedBox(width: 20,),

                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  //Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: TextSpan(
                text: 'Wellcome to ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: "\nAnion Code",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: RichText(
                text: TextSpan(
                    text:"I am Android Developer / Flutter Developer who create beautiful apps for your IOS/Android device.",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat-Regular",
                    ),
                    children: [
                      TextSpan(
                          text: "\n\n Contact:  pawkrzysciak@gmail.com",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87))
                    ]
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.network(
                "assets/image.png",
                scale: 1,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            //   Search(),
            Wrap(
              children: [
                Row(
                  children: [

                    SizedBox(width: 20,),
                    SizedBox(
                        child: FloatingActionButton(
                          backgroundColor: Colors.white10,
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network("assets/github.png"),
                          )),
                          onPressed: () {

                            js.context.callMethod("open", ["https://github.com/Lukieoo"]);
//                            _launchURL("https://github.com/Lukieoo");
                          },
                        ))
                    ,
                    SizedBox(width: 20,),
                    SizedBox(
                        child: FloatingActionButton(
                          backgroundColor: Colors.white10,
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network("assets/youtube.png"),
                          )),
                          onPressed: () {
                            js.context.callMethod("open", ["https://www.youtube.com/channel/UCseP9k1DwSAqzZ-iyeAlTvg"]);
                          },
                        ))
                    ,
                    SizedBox(width: 20,),
                    SizedBox(
                        child: FloatingActionButton(
                          backgroundColor: Colors.white10,

                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network("assets/fb.png"),
                          )),
                          onPressed: () {
                            js.context.callMethod("open", ["https://www.facebook.com/Anion-Code-115934359788737"]);

                          },
                        ))
                    ,
                    SizedBox(width: 20,),
                    SizedBox(
                        child: FloatingActionButton(
                          backgroundColor: Colors.white10,

                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network("assets/google.png"),
                          )),
                          onPressed: () {
                            js.context.callMethod("open", ["https://play.google.com/store/apps/dev?id=5300491392807005874"]);

                          },
                        ))
                    ,
                    SizedBox(width: 20,),

                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURL2() async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}