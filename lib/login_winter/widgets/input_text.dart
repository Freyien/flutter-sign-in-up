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
          fillColor: Theme.of(context).primaryColor.withOpacity(.1),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(5.0),
            ),
          ),
        ),
      ),
    );
  }
}
