import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String text;

  const PrimaryButton({
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        padding: EdgeInsets.symmetric(vertical: 14),
        onPressed: () {},
        child: Text(this.text,
            style: GoogleFonts.poppins(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        color: Theme.of(context).primaryColor),
    );
  }
}
