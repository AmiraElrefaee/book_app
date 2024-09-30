import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/asset_data.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,
            height: 20,),
          const Spacer(),
          IconButton(onPressed: (){},
              icon: const Icon(FontAwesomeIcons.magnifyingGlass,
                size: 30,)),


        ],
      ),
    );
  }
}