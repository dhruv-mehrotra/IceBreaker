import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyNxtLevelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Lvl 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile Level 1"),
          leading: GestureDetector(
            onTap: () {Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myParentWidget(context);
  }
}

// replace this function with the code in the examples
Widget _myParentWidget(BuildContext context) {
  return Scaffold(
      body:

      Container(

          child: Column(
            children: <Widget>[

              Container(
                width: double.infinity,
                height:200,
                child: new Image.asset("assets/profile_pic_full.png"),
                alignment: Alignment.center,
              ),

              Container(
                  width: double.infinity,
                  height:70,
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Mark Zukerberg', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 18)),
                        TextSpan(text: "\nDesigner/Developer at MDG IITR", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black,fontSize: 12)
                        )
                      ],
                    ),
                  )
              ),

              Container(
                  width: double.infinity,
                  height: 115,
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'ABOUT ME', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20)),
                        TextSpan(text: "\n\n I'm Mark. I'm here to make friends at IITR. I love talking to make new people. \nI would love to hear your adventurous story", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black,fontSize: 16),
                        )
                      ],
                    ),
                  )
              ),

              Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: '\n\n INTERESTS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20)),
                      ],
                    ),
                  )
              ),

              Container(
                width: double.infinity,
                height: 30,
                alignment: Alignment.center,
                child:  TextButton(
                  child: Text('Cricket'),
                  style: TextButton.styleFrom(
                    primary: Colors.teal,
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                )),

              Container(
                width: double.infinity,
                height: 30,
                alignment: Alignment.center,
                child:  TextButton(
                  child: Text('Anime'),
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                )),
              Container(
                width: double.infinity,
                height: 30,
                alignment: Alignment.center,
                child:  TextButton(
                  child: Text('Movies'),
                  style: TextButton.styleFrom(
                    primary: Colors.deepOrange,
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                )),

              Container(
                  width: double.infinity,
                  height: 80,
                  alignment: Alignment.center,
                  child: RaisedButton(
                    color: Colors.green,
                    textColor: Colors.black,
                    onPressed: null,
                    child: Text("Level Up!"),
                  )
              )
            ],
          )

      )
  );
}
