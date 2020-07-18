import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final IconData icon;

  const InputText({Key key, this.label, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          labelText: this.label,
          fillColor: Colors.grey[200],
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
          prefixIcon: Icon(
            this.icon,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
