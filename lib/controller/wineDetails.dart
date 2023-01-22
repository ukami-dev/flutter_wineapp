import 'package:course_project_03/view/home/wine_cart.dart';
import 'package:flutter/material.dart';


class WineDetails extends StatefulWidget {
  final wineDetail;
  WineDetails({this.wineDetail});
  @override
  State<WineDetails> createState() => _WineDetailsState();
}

class _WineDetailsState extends State<WineDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ListView(
          children: <Widget>[
            Stack(
                children: [
                  Container(
                    height: 500.0,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 12.0,
                              spreadRadius: 7.0)
                        ]),
                  ),
                  Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50.0)),
                      color: widget.wineDetail.bgColor,
                    ),
                  ),
                  Positioned(
                    top: 15.0,
                    left: 10.0,
                    right: 10.0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          Icon(Icons.shopping_cart, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  //We need to tilt the image slightly
                  Positioned(
                      top: 45.0,
                      left: 15.0,
                      right: 15.0,
                      child: Hero(
                          tag: widget.wineDetail.imgPath,
                          child: RotationTransition(
                              turns: AlwaysStoppedAnimation(20 / 360),
                              child: Container(
                                height: 250.0,
                                width: 250.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(widget.wineDetail.imgPath))),
                              )))),
                  Positioned(
                    top: 375.0,
                    left: 15.0,
                    right: 15.0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(widget.wineDetail.title,
                                      style: TextStyle(
                                        fontFamily: 'AbrilFatFace',
                                        fontSize: 20.0,
                                      )
                                  ),
                                  Text(widget.wineDetail.subTitle,
                                      style: TextStyle(
                                          fontFamily: 'AbrilFatFace',
                                          fontSize: 11.0,
                                          color: Colors.grey
                                      )
                                  )
                                ],
                              ),
                              Text(widget.wineDetail.price,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: widget.wineDetail.bgColor
                                  )
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Text('375ml of California Chardonnay',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey
                              )
                          ),
                          Text('Pair with: Fried chicken, Ramen Noodles, Nachos Supreme',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey
                              )
                          ),
                          Text('Golden Apple Crisp + Rooftop Parties',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey
                              )
                          )
                        ],
                      ),
                    ),
                  )
                ]),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Essentially Geared Wine',
                                style: TextStyle(
                                  fontFamily: 'AbrilFatFace',
                                  fontSize: 20.0,
                                )
                            ),
                            Text('Every Journey is An Opportunity',
                                style: TextStyle(
                                    fontFamily: 'AbrilFatFace',
                                    fontSize: 11.0,
                                    color: Colors.grey
                                )
                            )
                          ],
                        ),
                        Icon(
                          Icons.favorite,
                          color: widget.wineDetail.bgColor.withOpacity(0.5),
                          size: 22.0,
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: Text('Whether it\'s an impromptu gathering with good friends or sustainbly canning wine to keep up with your daily adventures. Together we seek the uncommon.',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(context) => WineCart(),));
          },
          label: const Text("  Add to cart ", style: TextStyle(fontSize: 15.0, fontFamily:"ArchivoBlack-Regular"),),
          // ignore: prefer_const_constructors
          backgroundColor: Color.fromRGBO(72, 29, 26, 1.0),
          shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25) ))
      ), //
    );
  }
}
