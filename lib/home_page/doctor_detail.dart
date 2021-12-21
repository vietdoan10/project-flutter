import 'package:flutter/material.dart';

class DoctorDetail extends StatelessWidget {
  final assetPath, cookiename, detail, info;

  DoctorDetail({this.assetPath, this.cookiename, this.detail, this.info,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Detail',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Thông tin BS',
              style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))
            ),
          ),
            SizedBox(height: 15.0),
            Hero(
              
              tag: assetPath,
              child: Image.asset(assetPath,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain
              )
            ),
            
            SizedBox(height: 10.0),
            Center(
              child: Text(cookiename,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 15.0, right: 15.0),
              child: Text(detail,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
                    
            ),
             SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 15.0, right: 15.0),
              child: Text(info,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
                    
            ),



            
            
        ]
      ),

      
    );
  }
}
