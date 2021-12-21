import 'package:flutter/material.dart';
import 'package:medical_app/button/button.dart';
import 'package:medical_app/home_page/nav.dart';
import 'package:medical_app/screens/wellcome/components/welcome_content.dart';
import '../../../constants.dart';
import '../../../home_page/home.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  static String routeName = "/body";

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> wellcomeData = [
    {
      "image": "assets/img/logo.png",
      "text": "An toàn người bệnh là mục tiêu của chúng tôi",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: wellcomeData.length,
                itemBuilder: (context, index) => WellcomeContent(
                  image: wellcomeData[index]["image"],
                  text: wellcomeData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    
                    Spacer(flex: 3),
                  
                    Button(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, Nav.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}