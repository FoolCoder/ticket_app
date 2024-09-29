import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.btnTxt,
      required this.onPressed,
      this.bgc = Colors.blue});
  final String btnTxt;
  final VoidCallback onPressed;
  final Color bgc;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 200,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),

          // ignore: prefer_const_constructors
          child: Text(
            btnTxt,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
