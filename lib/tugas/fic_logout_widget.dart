import 'package:flutter/material.dart';

class FICLogoutButton extends StatelessWidget {
  final Function()? onPressed;

  const FICLogoutButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.logout_outlined),
      onPressed: onPressed,
    );
  }
}
