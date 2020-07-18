import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_logins/login_background/pages/sign_in_background.dart';
import 'package:flutter_ui_logins/login_header/pages/sign_in_header.dart';
import 'package:flutter_ui_logins/login_winter/pages/sign_in_winter.dart';
import 'package:flutter_ui_logins/models/login_design.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final loginDesigns = [
      LoginDesign(
        ['background_signin.png', 'background_signup.png'], 
        'Background image', 
        SignInBackground(),
        Provider.of<CustomTheme>(context, listen: false).selectBackgroundTheme
      ),
      LoginDesign(
        ['header_signin.png', 'header_signup.png'], 
        'Image Header', 
        SignInHeader(),
        Provider.of<CustomTheme>(context, listen: false).selectHeaderTheme
      ),
      LoginDesign(
        ['winter_signin.png', 'winter_signup.png'], 
        'Background Color', 
        SignInWiter(),
        Provider.of<CustomTheme>(context, listen: false).selectWinterTheme
      )
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: loginDesigns.length,
          itemBuilder: (context, i) {
            return _CardPage(loginDesigns[i]);
          }
        ),
      ),
    );
  }
}

class _CardPage extends StatelessWidget {
  final LoginDesign loginDesign;
  final controller = PageController(viewportFraction: 0.8);

  _CardPage(this.loginDesign);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              this.loginDesign.setTheme();
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => this.loginDesign.page)
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height * .8,
              child: PageView.builder(
                itemCount: this.loginDesign.pathImage.length,
                controller: controller,
                itemBuilder: (context, i) {
                  return Image.asset('assets/img/${this.loginDesign.pathImage[i]}');
                }
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              this.loginDesign.text, 
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(
                    color: Color(0xffBBBCC0)
                  )
            ),
          ),
          Container(
            child: SmoothPageIndicator(
              controller: controller,
              count: this.loginDesign.pathImage.length,
              effect: WormEffect(
                activeDotColor: Theme.of(context).primaryColor,
                dotColor: Colors.grey[500]
              ),
            ),
          ),

        ],
      ),
    );
  }
}