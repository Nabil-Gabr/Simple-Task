import 'package:flutter/material.dart';
import 'package:simple_task_design/core/utils/styles.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/choice_chip_list_view.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/results_list_view.dart';

class ResultsCustomScrollView extends StatelessWidget {
  const ResultsCustomScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: ChoiceChipListView(),),
                SliverToBoxAdapter(child: Text('Results',style: Styles.textStyle18,),),
                SliverToBoxAdapter(child: ResultsListView(),),
              ],
            ),
          );
  }
}