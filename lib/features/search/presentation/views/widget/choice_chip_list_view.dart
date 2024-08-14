import 'package:flutter/material.dart';
import 'package:simple_task_design/features/search/data/categories.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/choice_chip_item.dart';

class ChoiceChipListView extends StatefulWidget {
  const ChoiceChipListView({super.key});

  @override
  State<ChoiceChipListView> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<ChoiceChipListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        //It is possible to use a Wrap instead of a ListView.buider here as well.
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ChoiceChipItem(textLabel: categories[index].categoryName,
           
          );
        },
      ),
    );
  }
}