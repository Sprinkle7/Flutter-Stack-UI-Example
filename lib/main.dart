import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'signup.dart';
import 'loginPage.dart';

void main() => runApp(

  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Stack Example',
    initialRoute: '/',
    routes: {
      '/': (context) => MainPage(),
      '/signup': (context) => SignUp(),
      '/login': (context) => LoginPage(),
    },
  )
);

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  CarouselSlider carouselSlider;
  int _current = 0;

  List<Text> textList = [
    Text('From idea to project plan. We’ll work to research, define and '
        'validate your product.',style: TextStyle(fontSize:18,color: Colors
        .white),
        textAlign: TextAlign.center),
    Text('We design products users wants through UX research, prototypes and user testing.',style: TextStyle(fontSize:18,color: Colors.white),textAlign: TextAlign.center),
    Text('We build elegant, intuitive and scalable web products & mobile '
        'applications.',style: TextStyle(fontSize:18,color: Colors.white),textAlign:
    TextAlign.center),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                image: AssetImage('assets/taxi.jpg'),
                fit: BoxFit.cover,
                color: Colors.black87,
                colorBlendMode: BlendMode.darken,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top:30)),
                    SafeArea(
                      child: Container(
                        child: Text(
                          'Karawan',
                          style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 30
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top:30)),
                    CarouselSlider(
                    autoPlay: true,
                    height: 100.0,
                    onPageChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                    items: [1,2,3].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              margin: EdgeInsets.symmetric(horizontal: 35.0),
                              child: Center(child: textList[i-1])
                          );
                        },
                      );
                    }).toList(),
                  ),
                    Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: map<Widget>(textList, (index, url) {
                            return Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index ? Color.fromRGBO(255, 255,
                                      255, 0.9) : Color.fromRGBO(255, 255, 255, 0.4)
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        child: Text('Continue',style: TextStyle(fontSize: 18),),
                        textColor: Colors.white,
                        color: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 10,
                            horizontal: 75),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SignUp())
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(color: Colors.blueAccent)
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }

}
