import 'package:carapp/loginPage.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage('assets/taxi.jpg'),
            color: Colors.black87,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:65.0),
                  child: Text(
                    'Karawan',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        child: Text('Login',style: TextStyle(fontSize: 18)),
                        textColor: Colors.white,
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.blue)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => LoginPage()
                          ));
                        },
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal:
                        85),
                        splashColor: Colors.blue.shade800,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        child: Text('Register', style: TextStyle(fontSize: 18)),
                        textColor: Colors.white,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.blue)
                        ),
                        onPressed: (){},
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal:
                        75),
                        splashColor: Colors.blue.shade800,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],

      ),
    );
  }
}
