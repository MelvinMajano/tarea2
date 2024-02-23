import 'package:flutter/material.dart';

class ButtonRepli extends StatelessWidget {
  const ButtonRepli({
    super.key,
    required this.icon,
    this.onPressed,
    
    });
    
    final IconData icon;
    final Function()? onPressed;
    

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, 
    icon: Icon(
      icon,
      ),
      );
  }
}