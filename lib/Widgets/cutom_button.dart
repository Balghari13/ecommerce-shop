
import 'package:flutter/material.dart';

import '../Utilis/utils.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final bool isLoading;
  const CustomButton({super.key, required this.child,
    required this.onPressed, required this.color, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return ElevatedButton(
        onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(screenSize.width*0.5, 40.0),
        backgroundColor: color,
      ), child: !isLoading?child:const Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          child: AspectRatio(
            aspectRatio: 1/1,
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ),
    );
  }
}
