
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/home_page/nav.dart';
import 'package:medical_app/home_page/sick_page.dart';
import 'package:medical_app/log_in/log_in.dart';

import 'doctor_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back,color: Color(0xFF545D68)),
        //   onPressed: () {
        //     Navigator.pushNamed(context, Body.routeName);
        //   },
        // ),
        title: Text('Home',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.white,
            )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.white),
            padding: EdgeInsets.only( right: 10.0),
            iconSize: 30,
            onPressed: () {
              Navigator.pushNamed(context, LoginPage.routeName);
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, right: 10.0),
        children: <Widget>[
          SizedBox(
            height: 180.0,
            width: double.infinity,
            child: Carousel(
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Colors.lightBlue,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              dotVerticalPadding: 5.0,
              // dotPosition: DotPosition.bottomRight,
              images: [
                Image.asset(
                 'img/slide1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                 'img/slide2.png',
                  fit: BoxFit.cover,
                ),
              ]
            ),
          ),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Bệnh',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Bác sĩ',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                // Tab(
                //   child: Text('Hổ trợ',
                //       style: TextStyle(
                //         fontFamily: 'Varela',
                //         fontSize: 21.0,
                //       )),
                // ),
                
              ]),
              Container(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Sick(),
                    Doctor(),
                    // Sick(),
                  ]
                )
              ),
              Nav()
        ],
      ),
    );
  }
}
