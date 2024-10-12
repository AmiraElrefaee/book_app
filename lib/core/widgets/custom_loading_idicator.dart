import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLoadingIdicator extends StatelessWidget {
  const CustomLoadingIdicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: const CircularProgressIndicator());
  }
}
