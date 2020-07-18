import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Widget page;

  const SecondaryButton({this.text, this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(width: 1, color: Theme.of(context).primaryColor)
        ),
        padding: EdgeInsets.symmetric(vertical: 14),
        onPressed: () =>
          Navigator.pushAndRemoveUntil(
            context, 
            MaterialPageRoute(builder: (context) => this.page), 
            (route) => false
          ), 
        child: Text(
          this.text, 
          style: GoogleFonts.poppins(
            fontSize: 17,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold
          )
        ),
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        color: Colors.transparent
      ),
    );
  }
}