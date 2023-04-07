import 'package:flutter/material.dart';
import 'package:meme_app/views/theme/theme.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: const Text(
          'Download',
          style: TextStyle(color: AppTheme.barIcons, fontSize: 20),
        ));
  }
}
