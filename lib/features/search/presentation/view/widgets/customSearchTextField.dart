import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customsearchtextfield extends StatelessWidget {
  const Customsearchtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 20,
      ),
      maxLines: 1,
decoration: InputDecoration(

    enabledBorder: buildOutlineInputBorder(),
  focusedBorder: buildOutlineInputBorder(),
  labelText: 'search',

  labelStyle: TextStyle(
    fontSize: 20
  ),
  suffixIcon: IconButton(onPressed: (){},
      icon:  const Opacity(
        opacity: .7,
        child: const Icon(FontAwesomeIcons.magnifyingGlass,
            size: 30,),
      )),)
  
);

  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(

    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(

      width: 2,
    color: Colors.white24
    )
  );
  }
}
