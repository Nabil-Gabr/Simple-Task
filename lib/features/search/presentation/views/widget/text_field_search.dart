import 'package:flutter/material.dart';
import 'package:simple_task_design/core/utils/styles.dart';
import 'package:simple_task_design/core/widgets/custom_buttom.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/custom_categorys.dart';
import 'package:simple_task_design/features/search/presentation/views/widget/custom_duration.dart';

class TextFieldSearch extends StatefulWidget {
  const TextFieldSearch({super.key});

  @override
  State<TextFieldSearch> createState() => _TextFieldSearchState();
}

class _TextFieldSearchState extends State<TextFieldSearch> {
  RangeValues values = const RangeValues(0.2, 0.5);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextField(
        decoration: InputDecoration(
          fillColor: const Color(0xff3E3E55),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                weight: 13.9,
              )),
          suffixIcon: IconButton(
              onPressed: () {
                bottomSheet(context);
              },
              icon: const Icon(Icons.tune)),
        ),
      ),
    );
  }

  Future<dynamic> bottomSheet(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.85,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff2F2F42),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
                      const Expanded(
                        child: Text('Search Filter', style: Styles.textStyle18,textAlign: TextAlign.center,),)
                    ],
                  ),
                  const CustomCategorys(),
                  const Text('price', style: Styles.textStyle16),
                  RangeSlider(
                    values: values,
                    labels: labels,
                    onChanged: (newValue) {
                      setState(() {
                        values = newValue;
                      });
                    },
                  ),
                  const CustomDuration(),
                  const Expanded(
                      child: SizedBox(
                    height: 18,
                  )),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 33.75),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: CustomButton(
                                backgroundColor: Color(0xff858597),
                                textColor: Colors.white,
                                text: 'Clear')),
                        SizedBox(
                          width: 9.75,
                        ),
                        Expanded(
                            flex: 3,
                            child: CustomButton(
                                backgroundColor: Color(0xff3D5CFF),
                                textColor: Colors.white,
                                text: 'Apply Filter')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
