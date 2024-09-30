import 'package:flutter/cupertino.dart';

import 'custom_appBar.dart';
import 'home_list_view_body.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const  CustomAppbar(),
        HomeListViewBody(),
      ],
    );
  }
}