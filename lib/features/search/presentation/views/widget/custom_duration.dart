import 'package:flutter/material.dart';
import 'package:simple_task_design/core/utils/styles.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/choice_chip_item.dart';

class CustomDuration extends StatelessWidget {
  const CustomDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Duration',style: Styles.textStyle16),
                        const SizedBox(height: 12,),
                        const Wrap(
                          children: [
                            ChoiceChipItem(textLabel: '3-8 Hours'),
                            ChoiceChipItem(textLabel: '8-14 Hours'),
                            ChoiceChipItem(textLabel: '14-20 Hours'),
                            ChoiceChipItem(textLabel: '20-24 Hours'),
                            ChoiceChipItem(textLabel: '24-30 Hours'),
                            
                          ],
                        ),
      ],
    );
  }
}