import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ochristos/widget/appbar.dart';

class MainScreen extends StatefulWidget {
//  const MainScreen({Key? key}) : super(key: key);
  static const String idScreen = "MainScreen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  bool drawerOpen = true;
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#004450"),
      drawer: Container(
        width: 350,
        child: Container(
          child: Drawer(

            child: Container(
              color: Colors.black12,
              child: ListView(
                children: [
                  //Drawer Header
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    height: 165.0,
                    child: DrawerHeader(
                      decoration: BoxDecoration(color:HexColor("#004450")),
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "uName",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: "Brand Bold",
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // onTap: ()
                                    // {
                                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileTabPage()));
                                    // },
                                    Text(
                                      "uPhone",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: "Brand Bold",
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 38.0,
                    left: 22.0,
                    child: GestureDetector(
                      onTap: () {
                        if (drawerOpen) {
                          scaffoldKey.currentState.openDrawer();
                        } else {
                         // resetApp();
                        }
                      },


                    child: Container(
                      decoration: BoxDecoration(
                          color: HexColor("#004450"),
                          borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(0.0)),
                          border: Border.all(color: Colors.white, width: 1.0)),
                      child: Column(children: [
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          },
                          leading: Icon(
                            Icons.person,
                            color: HexColor("#FECE17"),
                          ),
                          title: Text(
                            "My Profile",
                            style: TextStyle(fontSize: 15.0,color: HexColor("#FECE17"),),
                          ),
                         // subtitle: Text("Personal Details"),
                          trailing: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color:HexColor("#FECE17"),
                          ),
                        ),
                        Container(
                            margin:
                            const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              color: Colors.black,
                            )),
                        Column(children: [
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainScreen()));
                            },
                            leading: Icon(
                              Icons.account_balance_rounded,
                              color: HexColor("#FECE17"),
                            ),
                            title: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                             MainScreen()));
                                },
                                child: Text(
                                  "History",
                                  style: TextStyle(fontSize: 15.0, color: HexColor("#FECE17"),),
                                )),
                           // subtitle: Text("Keep Track of all Deliveries"),
                            trailing: Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: HexColor("#FECE17"),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 10.0),
                              child: Divider(
                                color: Colors.black,
                              )),
                          Column(children: [
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainScreen()));
                              },
                              leading: Icon(
                                Icons.info,
                                color: HexColor("#FECE17"),
                              ),
                              title: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MainScreen()));
                                  },
                                  child: Text(
                                    "About",
                                    style: TextStyle(fontSize: 15.0,color:HexColor("#FECE17"),),
                                  )),
                              //subtitle:
                              //Text("Terms & Conditions, Privacy Policy"),
                              trailing: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: HexColor("#FECE17"),
                              ),
                            ),
                          ]),
                        ]),
                      ]),
                    ),
                  ),
                  ),


                  SizedBox(
                    height: 25,
                  ),

                  Container(
                    child: Container(
                      height: 70,
                      // decoration: BoxDecoration(
                      //     color:  HexColor("#004450"),
                      //     borderRadius:
                      //     BorderRadius.only(topLeft: Radius.circular(30.0)),
                      //     border: Border.all(color: Colors.white, width: 1.0)),
                      child: Column(children: [
                        ListTile(
                          onTap: () {
                            //_showMyDialog();
                          },
                          leading: Icon(
                            Icons.logout,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Sign Out",
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: appbar(
        CircleAvatar(
          backgroundColor: HexColor("#FECE17"),
          //HexColor("#238FC5"),

          radius: 20.0,
        ),
      ),
      body: Stack(
       children:[
         Positioned(
           top: 38.0,
           left: 22.0,
           child: GestureDetector(
             onTap: () {
               if (drawerOpen) {
                 scaffoldKey.currentState.openDrawer();
               } else {
               //  resetApp();
               }
             },
             child: Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(22.0),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey,
                     blurRadius: 6.0,
                     spreadRadius: 0.5,
                     offset: Offset(
                       0.7,
                       0.7,
                     ),
                   ),
                 ],
               ),
               //child: CircleAvatar(
               // backgroundColor: Colors.white,
               //   //HexColor("#238FC5"),
               //   child: Icon(
               //     (drawerOpen) ? Icons.menu : Icons.close,
               //     color:  HexColor("#FECE17"),
               //   ),
               //   radius: 20.0,
               // ),
             ),
           ),
         ),


         Padding(
        padding: const EdgeInsets.only(top:2.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget> [
              Container(
                width: 600,
                height: 150,
                margin: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 20),
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 5),

                child: CarouselSlider(
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16/9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      //onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),
                  //options: CarouselOptions(height: 400.0),
                  items: [

                    Image.asset('assets/images/image2.JPG',
                    width: double.infinity, fit: BoxFit.cover,
                    ),
                    Image.asset('assets/images/imagel1.JPG',
                      width: double.infinity,),
                    Image.asset('assets/images/imagel2.JPG',
                      width: double.infinity,),
                    Image.asset('assets/images/imagel3.JPG',
                      width: double.infinity,),

                  ],
                ),


                decoration: const BoxDecoration(



                  color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),

              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:0.0),
                            child: Container(

                              width: 200,
                              height: 240,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),


                              child: Center(

                              child: ElevatedButton(
                                child: Text("Projects", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0,color: Colors.black),),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(


                                              borderRadius: BorderRadius.circular(18.0),
                                             // side: BorderSide(color: Colors.blueGrey)
                                          )
                                      )
                                  ),


                                  onPressed: () {  },


                            ),

                            ),


                              decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/image.jpg"),
                                      fit: BoxFit.cover),



                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),


                            ),
                          )
                        ],

                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:0.0),
                            child: Container(
                              width: 200,
                              height: 240,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),


                              child: Center(//child: Text("",
                               // style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),)),

                              child: ElevatedButton(
                                child: Text("PRAYER STREAKS", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0,color: Colors.black),),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),


                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(

                                          borderRadius: BorderRadius.circular(18.0),
                                          // side: BorderSide(color: Colors.blueGrey)
                                        )
                                    )
                                ),


                                onPressed: () {  },


                              ),

                              ),


                              decoration: const BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/prayer.jpg"),
                                    fit: BoxFit.cover),




                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),


                            ),
                          )
                        ],

                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:0.0),
                            child: Container(
                              width: 200,
                              height: 240,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: Center(

                                child: ElevatedButton(
                                  child: Text("Donate", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0,color: Colors.black),),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(

                                            borderRadius: BorderRadius.circular(18.0),
                                            // side: BorderSide(color: Colors.blueGrey)
                                          )
                                      )
                                  ),


                                  onPressed: () {  },


                                ),


                              ),


                              decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/donate.jpg"),fit: BoxFit.cover),



                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),


                            ),
                          )
                        ],

                      ),

                    ],

                  ),


                ),
              ),
              Container( child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:0.0),
                    child: Container(
                      width: 900,
                       height: 240,
                      // margin: const EdgeInsets.symmetric(
                      //     horizontal: 20, vertical: 20),
                      // padding: const EdgeInsets.symmetric(
                      //     horizontal: 15, vertical: 5),

                      decoration: const BoxDecoration(


                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),


                    ),
                  )
                ],

              ),)
            ],


          ),
        ),


      ),


    ]
      ),
    );
  }
}
