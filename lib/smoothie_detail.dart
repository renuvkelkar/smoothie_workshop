import 'package:flutter/material.dart';

import 'model/smoothie.dart';
class SmoothieDetailPage extends StatefulWidget {
  final Smoothie newSmoothie;

  const SmoothieDetailPage({Key key, this.newSmoothie}) : super(key: key);



  _SmoothieDetailPageState createState() => _SmoothieDetailPageState();
}

class _SmoothieDetailPageState extends State<SmoothieDetailPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.newSmoothie.name),
        centerTitle: true,
        backgroundColor: Color(widget.newSmoothie.color),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: screenHeight * 0.3,
              color: Color(widget.newSmoothie.color),

            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: Image.asset(widget.newSmoothie.imagePath,height: 300,)),
                Center(
                  child: Text("Calories",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                ),
                SizedBox(height: 15,),
                Center(
                  child: Text(widget.newSmoothie.calories,style: TextStyle(
                    fontSize: 25,
                      color: Colors.green,
                  ),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Ingredients",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(widget.newSmoothie.color),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 50,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(widget.newSmoothie.ingredient1,style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),),
                        Text(widget.newSmoothie.ingredient2,style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),),
                        Text(widget.newSmoothie.ingredient3,style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),),

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Description",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(widget.newSmoothie.newNumber.toString(),style: TextStyle(
                    fontSize: 16,

                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(widget.newSmoothie.description,style: TextStyle(
                    fontSize: 16,

                  ),),
                ),
              ],
            ),

          ],
        )

      ),
    );
  }
}
