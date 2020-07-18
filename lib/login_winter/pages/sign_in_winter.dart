import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_logins/login_winter/widgets/circular_logo.dart';
import 'package:flutter_ui_logins/login_winter/pages/sign_up_winter.dart';
import 'package:flutter_ui_logins/login_winter/widgets/input_text.dart';
import 'package:flutter_ui_logins/login_winter/widgets/primary_button.dart';
import 'package:flutter_ui_logins/login_winter/widgets/secondary_button.dart';
import 'package:flutter_ui_logins/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWiter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Theme.of(context).primaryColor));

    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[              
                _Content(),
              
                CircularLogo(),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _WinterImage(),

            SizedBox(height: 40),

            _Title(),
            _Subtitle(),

            SizedBox(height: 20),

            _Form(),
          
            SizedBox(height: 20),

            PrimaryButton(text: 'LOGIN NOW'),

            SizedBox(height: 20),

            _ForgotPassword(),

            SizedBox(height: 20),

            _Lines(),

            SizedBox(height: 30),

            _HaveAccount(),

            SizedBox(height: 15),

            SecondaryButton(text: 'CREATE ACCOUNT', page: SignUpWiter(),)

          ],
        ),
      ),
    );
  }
}

class _WinterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10),
      child: SvgPicture.asset('assets/svg/winter.svg'),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'LOGIN',
      style: GoogleFonts.nunitoSans(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor
      ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Login to join communities, react, and comment on all your favorite Tellit content!',
      style: GoogleFonts.nunitoSans(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).primaryColor
      ),
    );
  }
}

class _Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[

          InputText(label: 'Email address',),
          InputText(label: 'Password',)

        ],
      )
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Forgot Password?',
        style: GoogleFonts.nunitoSans(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).primaryColor
        ),
      ),
    );
  }
}

class _Lines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            width: 250,
            height: .6,
            color: Theme.of(context).primaryColor.withOpacity(.5),
            alignment: Alignment.center,
          ),
          SizedBox(height: 10),
          Container(
            width: 125,
            height: .6,
            color: Theme.of(context).primaryColor.withOpacity(.5),
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}

class _HaveAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Don\'t have an account?',
        style: GoogleFonts.nunitoSans(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).primaryColor
        ),
      ),
    );
  }
}