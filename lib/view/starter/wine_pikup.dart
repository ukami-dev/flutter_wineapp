import 'package:course_project_03/view/home/home.dart';
import 'package:course_project_03/view/starter/wine_choose.dart';
import 'package:flutter/material.dart';

import '../../controller/wineDetails.dart';

class WinePikup extends StatefulWidget {
  const WinePikup({Key? key}) : super(key: key);

  @override
  State<WinePikup> createState() => _WinePikupState();
}

class _WinePikupState extends State<WinePikup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(

          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(),));
                }, child: Text("Skip", style: TextStyle(color: Colors.black),),)
          ],
        ),
        body: SafeArea(
          child: Container(

            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                    height: 300,
                    width: 350,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end ,
                        children: const [
                          Image(
                            image: AssetImage(
                              "01.png",
                            ),
                          ),
                        ])),


                Container(
                    height: 40,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Text(
                            "Welcome to the world of wine",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Fondamento-Regular",),
                          ),
                        )
                      ],
                    )),

                Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [

                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "Here you pick up",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontFamily:"ArchivoBlack-Regular"),
                          ),
                        ),

                      ],
                    )),
                Container(
                                        decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "a drink that fits all",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontFamily:"Fondamento-Regular.ttf"),
                          ),
                        )
                      ],
                    )),
                Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "your creteria",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontFamily:"ArchivoBlack-Regular"),
                          ),
                        )
                      ],
                    )),
               SizedBox(height: 60, ),
               // Container(
               //   height: 10,
               //   width: 20,
               //   child: Align(
               //     alignment: Alignment.bottomLeft,
               //     child: Row(
               //       children: [
               //          Container(
               //            height: 10,
               //            width: 10,
               //            decoration: BoxDecoration(
               //              color: Colors.green,
               //            ),
               //          )
               //       ],
               //     ) ,
               //   ),
               // )
                Container(
                  height: 10, width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        Container(
                          height: 5,
                          width: 25,
                          color: Color.fromRGBO(72, 29, 26, 1.0),
                        ),
                        SizedBox(width: 4,),
                        Container(
                          height: 5,
                          width: 25,
                          color: Color.fromRGBO(100, 100, 100, 0.5),
                        ),
                        SizedBox(width: 4,),
                        Container(
                          height: 5,
                          width: 25,
                          color: Color.fromRGBO(100, 100, 100, 0.5),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),

      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(context) => WineChoose(),));
          },
          label: Text("  Next  ", style: TextStyle(fontSize: 20.0, fontFamily:"ArchivoBlack-Regular"),),
          // ignore: prefer_const_constructors
          backgroundColor: Color.fromRGBO(72, 29, 26, 1.0),
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25) ))
      ), //
      );

  }
}
//412017FF
