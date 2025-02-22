import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColour;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  RoundedButton(
      {this.icon,
       this.bgColour = Colors.blue,
        this.textStyle,
        this.callBack, 
        required this.btnName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callBack!();
        },
        child:icon!= null?  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            Text(btnName,
            style:textStyle,)
          ],
        ): Text(btnName,style: textStyle,),
        style: ElevatedButton.styleFrom(
           backgroundColor: bgColour,
           shadowColor: bgColour,
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21)
            )
           )
        );
  }
}
