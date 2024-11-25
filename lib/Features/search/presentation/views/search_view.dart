import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}


class _SearchViewState extends State<SearchView> {
@override



  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child:  SearchViewBody()));
  }
}
