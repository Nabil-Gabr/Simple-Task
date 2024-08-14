import 'package:flutter/material.dart';
import 'package:simple_task_design/core/utils/styles.dart';

class ChoiceChipItem extends StatefulWidget {
  const ChoiceChipItem( {super.key, required this.textLabel});
  final String textLabel;

  @override
  State<ChoiceChipItem> createState() => _ChoiceChipItemState();
}

class _ChoiceChipItemState extends State<ChoiceChipItem> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12, bottom: 12),
      child: ChoiceChip(
        backgroundColor: const Color(0xff858597),
        label: Text(
          widget.textLabel,
          style: Styles.textStyle12.copyWith(color: Colors.white),
        ),
        selected: _isSelected,
        onSelected: (value) {
          setState(() {
            _isSelected = value;
          });
        },
        labelStyle: TextStyle(
            color: _isSelected
                ? const Color(0xff858597)
                : const Color(0xff858597)),
      ),
    );
  }
}
