import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/views/widgets/custom_text_field_search.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_listView.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constant.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
           customTextField(
            onChanged: (value){
              BlocProvider.of<SearchCubit>(context).getSearchResult(subject: value);

            },
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle16
                .copyWith(fontFamily: kGTSectraFine, fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
        Expanded(child: SearchResultList())
        ],
      ),
    );
  }
}
