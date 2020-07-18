import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -43,
      right: -26,
      child: FadeInDown(
        from: 15,
        delay: Duration(milliseconds: 300),
        child: Container(
          height: 169,
          width: 169,
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(100)
          ),
          alignment: Alignment.bottomLeft,
          child: Text(
            'Logo',
             style: GoogleFonts.greatVibes(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w500
             )
          ),
        ),
      ),
    );
  }
}
