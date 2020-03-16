import 'package:carapp/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final format = DateFormat("yyyy-MM-dd");

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
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 105),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                      hintText: 'Fullname',
                                      hintStyle: TextStyle(color: Colors.white),
                                      prefixIcon: Icon(Icons.access_alarm,
                                        color: Colors.white),
                                      fillColor: Colors.black54,
                                      filled: true,
                                      contentPadding: EdgeInsets.fromLTRB(10,
                                          15 , 0, 15),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors
                                            .white, width: 32),
                                        borderRadius: BorderRadius.circular(25)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors
                                            .black87, width: 32),
                                        borderRadius: BorderRadius.circular(25)
                                      )
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    controller: null,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: 'Enter Email',
                                      hintStyle: TextStyle(color: Colors.white),
                                      prefixIcon: Icon(Icons.email,color:
                                      Colors.white,),
                                      fillColor: Colors.black54,
                                      filled: true,
                                      contentPadding: EdgeInsets.fromLTRB(10,
                                          15, 0, 15),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        borderSide: BorderSide(color: Colors
                                            .white)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors
                                            .black87, width: 32),
                                        borderRadius: BorderRadius.circular(25)
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  DateTimeField(
                                    format: format,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(10, 15, 0, 15),
                                        hintText: 'Date Of Birth',
                                        prefixIcon: Icon(Icons.date_range, color:
                                        Colors.white,),
                                        fillColor: Colors.black54,
                                        filled: true,
                                        hintStyle: TextStyle(color: Colors.white),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(25),
                                            borderSide: BorderSide(color: Colors.white)
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(25),
                                            borderSide: BorderSide(color: Colors
                                                .black87,width: 32)
                                        )
                                    ),
                                    onShowPicker: (context, currentValue) {
                                      return showDatePicker(
                                          context: context,
                                          firstDate: DateTime(1900),
                                          initialDate: currentValue ?? DateTime.now(),
                                          lastDate: DateTime(2100));
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    controller: null,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: 'Enter Phone Number',
                                      hintStyle: TextStyle(color: Colors.white),
                                      prefixIcon: Icon(Icons.phone_android,color:
                                      Colors.white,),
                                      fillColor: Colors.black54,
                                      filled: true,
                                      contentPadding: EdgeInsets.fromLTRB(10,
                                          15, 0, 15),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          borderSide: BorderSide(color: Colors
                                              .white)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors
                                              .black87, width: 32),
                                          borderRadius: BorderRadius.circular(25)
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: RaisedButton(
                                      child: Text('Register', style: TextStyle
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
                                    height: 20,
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
                                      'Login',
                                      style: TextStyle(
                                          decoration: TextDecoration
                                              .underline, color: Colors.white
                                      ),
                                    ),
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => LoginPage()
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
              ),
            )
          ],
        ),
    );
  }
}
