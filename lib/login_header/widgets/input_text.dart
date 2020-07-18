import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;

  const InputText({
    this.label
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          labelText: this.label,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1)
          ),
          labelStyle: TextStyle(
            color: Colors.black.withOpacity(.7)
          ),
          focusColor: Colors.purple
        ),
      ),
    );
  }
}