import 'package:course_project_03/view/home/credit_cart.dart';
import 'package:course_project_03/view/home/delivery_adresse.dart';
import 'package:flutter/material.dart';
class WineCart extends StatefulWidget {
  const WineCart({Key? key}) : super(key: key);
  @override
  State<WineCart> createState() => _WineCartState();
}
class _WineCartState extends State<WineCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("My cart"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 600,
                  width: 337,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: const [
                        Image(
                          image: AssetImage(
                            "card.png",
                          ),
                          height: 600,
                        ),
                      ])),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(context) => DelAdresse(),));
          },
          label: Text("  Buy ", style: TextStyle(fontSize: 20.0, fontFamily:"ArchivoBlack-Regular"),),
          // ignore: prefer_const_constructors
          backgroundColor: Color.fromRGBO(72, 29, 26, 1.0),
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25) ))
      ), //
    );
  }
}
