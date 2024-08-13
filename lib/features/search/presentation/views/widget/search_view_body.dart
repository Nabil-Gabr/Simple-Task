import 'package:flutter/material.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/custom_app_bar.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/results_custom_scroll_view.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/text_field_search.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          TextFieldSearch(),
          ResultsCustomScrollView(),
        ],
      ),
    );
  }
}