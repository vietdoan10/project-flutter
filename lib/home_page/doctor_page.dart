import 'package:flutter/material.dart';
import 'package:medical_app/home_page/doctor_detail.dart';


class Doctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('BS. Tahm kench','img/doctor1.jpg','Giới tính: Nam','tuổi:45', context),
                  _buildCard('BS. Lee Sin','img/doctor2.jpg','Giới tính: Nam','tuổi:45', context),
                  _buildCard('BS. Kaisa','img/doctor3.jpg','Giới tính: Nữ','tuổi:45', context),
                  _buildCard('BS. Yasuo','img/doctor4.jpg','Giới tính: Nam','tuổi:45',context),
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String imgPath,String content, String info, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DoctorDetail(
                      assetPath: imgPath,
                      cookiename: name,
                      detail: content,
                      info: info,
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 3.0),
                
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 20.0)),
                  
                  
                  
                  
                ]))));
  }
}
