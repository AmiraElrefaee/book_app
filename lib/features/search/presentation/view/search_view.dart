import 'package:book_application/features/search/presentation/manager/searches_cubit/searched_item_cubit.dart';
import 'package:book_application/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/service_locator.dart';
import '../../../home/presentation/views/data/repos/home_repo_imple.dart';
import 'data/repos/repo_imple.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SearchedItemCubit(getIt.get<HomeRepoImple>()),
        // Provide your repo here
        child: Builder(
            builder: (context) {
              // Call fetchNewestBooks after the BlocProvider is attached to the context
              BlocProvider.of<SearchedItemCubit>(context).fetchNewestBooks();

              return const Scaffold(
                body: SafeArea(child: SearchViewBody()),
              );
            }));
  }}
