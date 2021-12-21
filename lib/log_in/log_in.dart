import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  get images => null;
  static String routeName = "/log_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white),
          onPressed: () {
            // Navigator.pushNamed(context, Body.routeName);
            Navigator.of(context).pop();
          },
        ),
        title: Text('Login',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('img/br_login.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(height:80,),
                // Image.asset('./images/music.jpg',width:20,height:20),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'App Medical',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 480,
                  width: 325,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text('Đăng Nhập',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 35,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Đăng nhập tài khoản của bạn',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                            decoration: InputDecoration(
                          labelText: 'Email',
                          suffixIcon: Icon(
                            FontAwesomeIcons.envelope,
                            size: 17,
                          ),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              suffixIcon: Icon(
                                FontAwesomeIcons.eyeSlash,
                                size: 17,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Tạo tài khoản          ',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              
                              'Quên mật khẩu',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF64B5F6),
                                    Color(0xFF1E88E5),
                                    Color(0xFF64B5F6)
                                  ])),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Đăng nhập',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Đăng nhập bằng cách khác',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(FontAwesomeIcons.facebookF,
                                color: Colors.blue),
                            Icon(FontAwesomeIcons.twitch, color: Colors.blue),
                            Icon(FontAwesomeIcons.solidEnvelope,
                                color: Colors.blue),
                            Icon(FontAwesomeIcons.instagram,
                                color: Colors.blue),
                          ])
                    ],
                  ),
                )
              ],
            )
          ),
        )
    );
  }
}
