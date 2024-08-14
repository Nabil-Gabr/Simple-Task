import 'package:flutter/material.dart';
import 'package:simple_task_design/core/utils/styles.dart';
import 'package:simple_task_design/features/search/data/categories.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/choice_chip_item.dart';

class CustomCategorys extends StatelessWidget {
  const CustomCategorys({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Category', style: Styles.textStyle16),
        const SizedBox(
          height: 12,
        ),
        Wrap(
          children: 
          categories.map((e) {
              return ChoiceChipItem(textLabel: e.categoryName);
            }).toList()
          
        ),
      ],
    );
  }
}