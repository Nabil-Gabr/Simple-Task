import 'package:flutter/material.dart';
import 'package:simple_task_design/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
          const Expanded(
            child: Text(
              'Search',
              style: Styles.textStyle18,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
