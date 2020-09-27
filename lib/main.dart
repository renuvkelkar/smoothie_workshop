import 'package:flutter/material.dart';
import 'package:smoothieworkshop/model/smoothie.dart';
import 'package:smoothieworkshop/smoothie_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smoothi Bar"),
        backgroundColor: Color(0xFFF05262),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: smoothies.length,
        itemBuilder: (context,index){
          Smoothie smoothieObject = smoothies[index];
          return Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_)=> SmoothieDetailPage(
                      newSmoothie : smoothieObject,
                    )

                  ));
                },
                child: Container(
                  child: Stack(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(left: 100,top: 30),
                        child: Container(
                          height: 150,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Color(smoothieObject.color),
                            borderRadius: BorderRadius.circular(75),
                          ),
                          child: Center(child: Text("green refresher",style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),)),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(smoothieObject.imagePath,height: 200,),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          );

        }


      ),
    );
  }
}
