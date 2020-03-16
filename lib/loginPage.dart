import 'package:carapp/registerpage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage('assets/taxi.jpg'),
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 150),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Form(
                        child: Container(
                          padding: EdgeInsets.all(45),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                controller: null,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(10.0,15.0, 0.0, 15.0),
                                  prefixIcon: Icon(Icons.email,color: Colors
                                        .white,),
                                  hintText: 'Email Address',
                                  fillColor: Colors.black54,
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white,
                                          width: 32.0),
                                      borderRadius: BorderRadius.circular(25.0)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black87, width: 32.0),
                                      borderRadius: BorderRadius.circular(25.0)
                                  )
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextField(
                                controller: null,
                                style: TextStyle(color: Colors.white),
                                obscureText: true,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                    prefixIcon: Icon(Icons.lock, color:
                                    Colors.white,),
                                    hintText: 'Enter Password',
                                    fillColor: Colors.black54,
                                    hintStyle: TextStyle(color: Colors.white),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white,
                                            width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black87, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0)
                                    )
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: RaisedButton(
                                  child: Text('Login Now', style: TextStyle
                                    (fontSize: 18),),
                                  textColor: Colors.white,
                                  color: Colors.blue,
                                  padding: EdgeInsets.symmetric(vertical: 10,
                                      horizontal: 75),
                                  onPressed: (){

                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: BorderSide(color: Colors.blue)
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      decoration: TextDecoration
                                          .underline, color: Colors.white
                                  ),
                                ),
                                onTap: (){
                                  print('Helllo');
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      decoration: TextDecoration
                                          .underline, color: Colors.white
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Register()
                                  ));
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
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
