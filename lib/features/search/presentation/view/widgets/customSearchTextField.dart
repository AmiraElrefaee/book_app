import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../manager/searches_cubit/searched_item_cubit.dart';

class Customsearchtextfield extends StatelessWidget {
  const Customsearchtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    SearchedItemCubit _cubit = context.read<SearchedItemCubit>();
    return TextFormField(
        onChanged: (String value) => _cubit.FetchSeared(title: value),
        style: const TextStyle(
          fontSize: 20,
        ),
        maxLines: 1,
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          labelText: 'search',
          labelStyle: const TextStyle(fontSize: 20),
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Opacity(
                opacity: .7,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 30,
                ),
              )),
        ));
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(width: 2, color: Colors.white24));
  }
}
