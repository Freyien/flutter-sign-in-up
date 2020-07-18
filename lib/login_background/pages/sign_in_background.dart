import 'package:flutter/material.dart';
import 'package:flutter_ui_logins/login_background/pages/sign_up_background.dart';
import 'package:flutter_ui_logins/login_background/widgets/input_text.dart';
import 'package:flutter_ui_logins/utils/utils.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SignInBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final keyboardSize = MediaQuery.of(context).viewInsets.bottom;
    return WillPopScope(
      onWillPop: () => onBackPressed(context),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Stack(
          children: <Widget>[

            Image.asset(
              'assets/img/bg_mountains.jpg', 
              fit: BoxFit.cover,
            ),

            SafeArea(
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                child: _Cards(keyboardSize),
              ),
            )

          ],
        ),
      ),
    );
  }
}

class _Cards extends StatelessWidget {
  final double keyboardsize;

  const _Cards(this.keyboardsize);

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = 24;
    final marginBottom = 30;
    final bottomPosition = 28;
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          bottom: 0,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * .74,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),

        Positioned(
          bottom: 14,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * .83,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),

        Positioned(
          bottom: 28,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 
                MediaQuery.of(context).size.height 
                  - statusBarHeight 
                  - keyboardsize 
                  - marginBottom 
                  - bottomPosition
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      _Title(),
                      _Subtitle(),

                      SizedBox(height: 30),

                      _Form(),

                      SizedBox(height: 5),

                      _ForgotPassword(),

                      SizedBox(height: 40),

                      _SubmitButton(),

                      SizedBox(height: 20),

                      _HaveAccount(),

                    ]
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'SIGN IN',
      style: Theme.of(context)
        .textTheme
        .headline5
        .copyWith(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold
        ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome back!',
      style: Theme.of(context)
        .textTheme
        .subtitle1
        .copyWith(
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

          InputText(label: 'Username', icon: LineAwesomeIcons.user),
          InputText(label: 'Username', icon: LineAwesomeIcons.key,),

        ],
      )
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot password?',
      style: TextStyle(
        color: Theme.of(context).primaryColor
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
      padding: EdgeInsets.symmetric(vertical: 17, horizontal: 80),
      onPressed: () {},
      child: Text(
        'SIGN IN',
        style: Theme.of(context)
          .textTheme
          .subtitle1
          .copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
      ),
      color: Theme.of(context).primaryColor
    );
  }
}

class _HaveAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushAndRemoveUntil(
        context, 
        MaterialPageRoute(builder: (context) => SignUpBackground()), 
        (route) => false
      ),
      child: Container(
        width: double.infinity,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Don\'t have an account? ',
            style: Theme.of(context)
              .textTheme
              .subtitle1
              .copyWith(
                color: Colors.grey
              ),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign Up', 
                style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}