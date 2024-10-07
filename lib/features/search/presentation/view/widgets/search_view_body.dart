import 'package:book_application/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'customSearchTextField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Customsearchtextfield(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Search result',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
