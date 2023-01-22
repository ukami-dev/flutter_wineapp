import 'package:course_project_03/controller/build_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:course_project_03/model/wine_stock.dart';
import 'package:course_project_03/controller/build_card.dart';
import '../../controller/wineDetails.dart';
import '../../controller/wine_rating.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int _counter = 0;
  int selectedIndex = 0;
  final wineBrands = wines;
  final recommendList = recommendWines;
  WineRating rating = WineRating();
  TextEditingController controller =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        const Text("What would you like ?",
        style: TextStyle(color: Colors.black, fontSize: 25),
        textAlign: TextAlign.left,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: CupertinoSearchTextField(
              controller: controller,
              onChanged: (value) {},
              onSubmitted: (value) {},
              autocorrect: true,
            ),
          ),
        ),
        const SizedBox(height: 10,),
        SizedBox(height: 10,),
        Container(
            height: 185,
            width: 350,
            child: Row(
                children: const [
                  Image(
                    image: AssetImage(
                      "baner.png",
                    ),
                  ),
                ])),
        Stack(children: [
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                color: Colors.white,
                ),
          ),


          Positioned(
            top: 45.0,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('',
                          style: TextStyle(
                              fontFamily: 'AbrilFatFace', fontSize: 25.0)),
                      Text('',
                          style: TextStyle(color: Colors.grey, fontSize: 12.0))
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Container(
                      height: 275.0,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: wineBrands.map((wine) {
                            return _buildCard(wine);
                          }).toList()))
                ],
              ),
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Recommend',
                  style: TextStyle(fontFamily: 'AbrilFatFace', fontSize: 25.0)),
              Text('More', style: TextStyle(color: Colors.grey, fontSize: 12.0))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 275.0,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: recommendList.map((wine) {
                  return _buildCard(wine);
                }).toList()),
          ),
        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 20,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Row(),
          ),
        ),
      ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          onTap: (ind){ return null;},
          backgroundColor: Color.fromRGBO(72, 29, 26, 1.0),
          margin: EdgeInsets.only(left: 10, right: 10), dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          // enableFloatingNavBar: false,
          items: [
          /// Home
          DotNavigationBarItem(
          icon: Icon(Icons.home),
          selectedColor: Color(0xff73544C),
          ),

          /// Likes
          DotNavigationBarItem(
          icon: Icon(Icons.favorite),
          selectedColor: Color(0xff73544C),
          ),

          /// Search
          DotNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          selectedColor: Color(0xff73544C),
          ),

          /// Profile
          DotNavigationBarItem(
          icon: Icon(Icons.person),
          selectedColor: Color(0xff73544C),
          ),
        ],
        ),
        ),
    );
  }



  Widget _buildCard(wine) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WineDetails(wineDetail: wine)));
            },
            child: Container(
                width: 180.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4.0,
                          spreadRadius: 5.0,
                          color: Colors.grey.withOpacity(0.1))
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 180.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white)),
                    Container(
                      height: 150.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                          color: wine.bgColor),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Hero(
                            tag: wine.imgPath,
                            child: Container(
                                height: 130.0,
                                width: 170.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(wine.imgPath),
                                        fit: BoxFit.contain),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0)))))),
                    Positioned(
                      top: 7.0,
                      left: 7.0,
                      child: Text(wine.price,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    Positioned(
                        top: 7.0,
                        right: 10.0,
                        child: Icon(Icons.favorite,
                            color: Colors.white, size: 15.0)),
                    Positioned(
                        top: 175.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(wine.title,
                                style: TextStyle(
                                  fontFamily: 'AbrilFatFace',
                                  fontSize: 14.0,
                                )),
                            SizedBox(height: 5.0),
                            Text(wine.subTitle,
                                style: TextStyle(
                                    fontSize: 11.0, color: Colors.grey)),
                            SizedBox(height: 5.0),
                            Row(
                              children: <Widget>[
                                rating.getRatingStar(wine.rating, 1),
                                rating.getRatingStar(wine.rating, 2),
                                rating.getRatingStar(wine.rating, 3),
                                rating.getRatingStar(wine.rating, 4),
                                rating.getRatingStar(wine.rating, 5),
                                SizedBox(width: 3.0),
                                Text(wine.rating.roundToDouble().toString(),
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Color(0xFF199693))),
                              ],
                            )
                          ],
                        ))
                  ],
                ))));
  }

  void _incrementCounter(index) {
    setState(() {
      if (index == 2  ) {
        _counter++;
      }else{
        return null;
      }
    });
  }

}





