import 'package:flutter/material.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/results_item.dart';

class ResultsListView extends StatelessWidget {
  const ResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 10,top: 10),
          child: ResultsItem(),
        );
      },
    );
  }
}