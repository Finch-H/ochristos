import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ochristos/widget/appbar.dart';

class MainScreen extends StatefulWidget {
//  const MainScreen({Key? key}) : super(key: key);
  static const String idScreen = "MainScreen";
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: appbar(),
      body: Padding(
        padding: const EdgeInsets.only(top:2.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: 300,
                height: 240,
                margin: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 20),
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 5),

                child: Image.asset('assets/images/image2.JPG',
                  width: double.infinity,),


                decoration: const BoxDecoration(


                  color: Colors.white,
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


                              decoration: const BoxDecoration(


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

                              decoration: const BoxDecoration(


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

                              decoration: const BoxDecoration(


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


    );
  }
}
