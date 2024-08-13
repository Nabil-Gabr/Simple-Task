import 'package:flutter/material.dart';
import 'package:simple_task_design/core/utils/styles.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/choice_chip_item.dart';

class CustomCategorys extends StatelessWidget {
  const CustomCategorys({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Category',style: Styles.textStyle16),
                        SizedBox(height: 12,),
                        Wrap(
                          children: [
                            ChoiceChipItem(textLabel: 'Design'),
                            ChoiceChipItem(textLabel: 'Painting'),
                            ChoiceChipItem(textLabel: 'Music'),
                            ChoiceChipItem(textLabel: 'Visual identiy'),
                            ChoiceChipItem(textLabel: 'Mathmatics'),
                            
                          ],
                        ),
      ],
    );
  }
}