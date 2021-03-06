import 'package:flutter/material.dart';
import 'nxtlevel.dart';

class IceBreaker4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          leading: GestureDetector(
            onTap: () {Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: BodyLayout3(),
      ),
    );
  }
}

class BodyLayout3 extends StatelessWidget {
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
                  height: 70.0,
                  child:RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Current Level: 0', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20)),
                        ]
                    ),
                  )
              ),

              Container(
                  width: double.infinity,
                  height: 300.0,
                  child: new Image.asset("assets/profile_pic_full.png")
              ),

              Container(
                  width: 300.0,
                  height: 150.0,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Mark Zukerberg', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 22)),
                        TextSpan(text: "\nDesigner/Developer at MDG IITR", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black,fontSize: 16)
                        )
                      ],
                    ),
                  )
              ),

              Container(
                  width: 200.0,
                  height: 80.0,
                  child: RaisedButton(
                    color: Colors.green,
                    textColor: Colors.black,
                    onPressed: () {
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => MyNxtLevelApp()),
                     );}
                    ,child: Text("Level Up!"),
                  )
              )
            ],
          )

      )
  );
}
