import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  final Color ContainerColor;
  final Color TextColor;
  final String Name;

  const appbar({Key? key,required this.ContainerColor, required this.Name,required this.TextColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 90,
      color:ContainerColor,
      child: Center(
        child: Text(
          Name,
          style: TextStyle(
            color: TextColor,
          ),
        ),
      ),
    );
  }
}
