import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'explore.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ice Breaker',
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ICE BREAKER!',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:

      Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"), fit: BoxFit.cover))
        ,child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[


        new SizedBox(
      width: double.infinity,
          height: 150.0,

           child:  new Image.asset("assets/logo.png",
               //              height: 150.00 ,
               //              width: 150.00
      ),)

        ,Container(

               width: 300.0,
               height: 40.0,
                 child: RichText(
                   text: TextSpan(
                       children: <TextSpan>[
                         TextSpan(text: 'ICE BREAKER', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 30)),
                       ]
                   ),
                 )
                 )

          ,new SizedBox(
          width: 300.0,
          height: 100.0,
          //   child: Padding(child: ,)
          child: TextButton(onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp2()),
          );
          }, child: Text("Login through Google")

                , style: ButtonStyle(
                   foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                     backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),

                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(18.0),
                             side: BorderSide(color: Colors.black),

                         )
                     )
                 )
             ))
             ,new SizedBox(
                 width: 300.0,
                 height: 100.0,
                 child:  TextButton(onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp2()),
                  );}, child: Text("Signup through Google")

                     , style: ButtonStyle(
                         foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),

                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(18.0),
                               side: BorderSide(color: Colors.black),

                             )
                         )
                     )
                 ))



           ]
      )

      )

        );

  }
}
