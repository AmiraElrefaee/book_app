import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customSearchTextField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Customsearchtextfield(),
        ],
      ),
    );

  }
}
