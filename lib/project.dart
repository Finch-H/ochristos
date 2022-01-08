import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ochristos/widget/appbar.dart';

class project extends StatefulWidget {
  //const projet({Key? key}) : super(key: key);
  static const String idScreen = "project";

  @override
  _projectState createState() => _projectState();
}

class _projectState extends State<project> {


  final GlobalKey<_projectState> cardA = new GlobalKey();
  final GlobalKey<_projectState> cardB = new GlobalKey();
  final GlobalKey<_projectState> cardC = new GlobalKey();
  final GlobalKey<_projectState> cardD = new GlobalKey();
  final GlobalKey<_projectState> cardE = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#004450"),
      appBar: appbar(
    CircleAvatar(
    backgroundColor: HexColor("#FECE17"),
    //HexColor("#238FC5"),

    radius: 20.0,
    ),
    ),



      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 900,
                height: 800,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpansionTileCard(
                          baseColor: Colors.cyan[50],
                          expandedColor:
                          HexColor("#FDD451"),
                          key: cardA,
                          leading: CircleAvatar(
                              child: Image.asset(
                                  "assets/images/logo.png")),
                          title: Text(""),
                          subtitle: Text(
                              "  "),
                          children: <Widget>[
                            Divider(
                              thickness: 1.0,
                              height: 1.0,
                            ),
                            Align(
                              alignment:
                              Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets
                                    .symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: Text("",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpansionTileCard(
                          baseColor: Colors.cyan[50],
                          expandedColor:
                          HexColor("#FDD451"),
                          key: cardB,
                          leading: CircleAvatar(
                              child: Image.asset(
                                  "assets/images/logo.png")),
                          title: Text(
                              ""),
                          subtitle:
                          Text(""),
                          children: <Widget>[
                            Divider(
                              thickness: 1.0,
                              height: 1.0,
                            ),
                            Align(
                              alignment:
                              Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets
                                    .symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpansionTileCard(
                          baseColor: Colors.cyan[50],
                          expandedColor:
                          HexColor("#FDD451"),
                          key: cardC,
                          leading: CircleAvatar(
                              child: Image.asset(
                                  "assets/images/logo.png")),
                          title: Text(""),
                          subtitle: Text(
                              "  "),
                          children: <Widget>[
                            Divider(
                              thickness: 1.0,
                              height: 1.0,
                            ),
                            Align(
                              alignment:
                              Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets
                                    .symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpansionTileCard(
                          baseColor: Colors.cyan[50],
                          expandedColor:
                          HexColor("#FDD451"),
                          key: cardD,
                          leading: CircleAvatar(
                              child: Image.asset(
                                  "assets/images/logo.png")),
                          title: Text(
                              ""),
                          subtitle: Text(
                              "  "),
                          children: <Widget>[
                            Divider(
                              thickness: 1.0,
                              height: 1.0,
                            ),
                            Align(
                              alignment:
                              Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets
                                    .symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpansionTileCard(
                          baseColor: Colors.cyan[50],
                          expandedColor:
                          HexColor("#FDD451"),
                          key: cardE,
                          leading: CircleAvatar(
                              child: Image.asset(
                                  "assets/images/logo.png")),
                          title:
                          Text(""),
                          subtitle: Text("  "),
                          children: <Widget>[
                            Divider(
                              thickness: 1.0,
                              height: 1.0,
                            ),
                            Align(
                              alignment:
                              Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets
                                    .symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.all(
                        Radius.circular(20))),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left:20.0,right: 20.0),
            //   child: RaisedButton(
            //     color: HexColor("#FDD451"),
            //     textColor: Colors.white,
            //     child: Container(
            //       height: 50.0,
            //       child: Center(
            //         child: Text(
            //           "UPLOAD",
            //           style: TextStyle(fontSize: 18.0, fontFamily: "Brand Bold"),
            //
            //         ),
            //
            //       ),
            //     ),
            //     shape:  new RoundedRectangleBorder(
            //       borderRadius:  new BorderRadius.circular(24.0),
            //     ),
            //     onPressed: ()
            //     {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //                   Upload()));
            //     },
            //
            //   ),
            // ),
          ],


        ),
      ),
    );
  }
}
