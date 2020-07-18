import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_logins/login_header/pages/sign_up_header.dart';
import 'package:flutter_ui_logins/login_header/widgets/input_text.dart';
import 'package:flutter_ui_logins/utils/utils.dart';

class SignInHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).primaryColor
    ));

    final keyboardSize = MediaQuery.of(context).viewInsets.bottom;

    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
          child: Stack(
            children: <Widget>[

              _Image(),
              Positioned(
                bottom: 0,
                child: _Card(keyboardSize)
              )

            ],
          ),
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(30),
      child: SvgPicture.asset('assets/svg/fall.svg', width: MediaQuery.of(context).size.width)
    );
  }
}

class _Card extends StatelessWidget {
  final double keyboardsize;

  const _Card(this.keyboardsize);

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = 24;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height - statusBarHeight - keyboardsize
      ),
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(60))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              _Title(),

              _Subtitle(),

              SizedBox(height: 20),

              _Form(),

              _ForgetPassword(),

              SizedBox(height: 20),

              _SubmitButton(),

              SizedBox(height: 20),

              _SignUpLink()

            ],
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome!', 
      style: Theme.of(context)
        .textTheme
        .headline5
        .copyWith(
          fontWeight: FontWeight.w500
        ));
  }
}

class _Subtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign In to continue!',
      style: Theme.of(context)
        .textTheme
        .subtitle1
        .copyWith(
          fontWeight: FontWeight.w500
        ));
  }
}

class _Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          InputText(label: 'User Name'),
          InputText(label: 'Password')
        ],
      )
    );
  }
}

class _ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        'FORGET PASSWORD?',
        textAlign: TextAlign.right,
        style: Theme.of(context)
          .textTheme
          .bodyText1
          .copyWith(
            color: Theme.of(context).primaryColor
          )),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 17),
        onPressed: (){}, 
        child: Text(
          'SIGN IN', 
          style: Theme.of(context)
            .textTheme
            .subtitle1
            .copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),
        ),
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        color: Theme.of(context).primaryColor
      ),
    );
  }
}

class _SignUpLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushAndRemoveUntil(
        context, 
        MaterialPageRoute(builder: (context) => SignUpHeader()), 
        (route) => false
      ),
      child: Container(
        width: double.infinity,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'New User? ',
            style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(
                fontWeight: FontWeight.w500
              ),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign Up', 
                style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
