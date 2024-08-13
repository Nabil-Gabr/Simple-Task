import 'package:flutter/material.dart';
import 'package:simple_task_design/core/utils/styles.dart';

class ResultsItem extends StatelessWidget {
  const ResultsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height:100 ,
            width: 335,
            decoration: BoxDecoration(
              color: const Color(0xff2F2F42),
              borderRadius: BorderRadius.circular(16),
            ),

            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Container(
                    height:68 ,
                    width: 68,
                    decoration: BoxDecoration(
                      color: const Color(0xffC4C4C4),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  const SizedBox(width: 35,),
                   Expanded(
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Product Design v1.0',maxLines: 1,overflow: TextOverflow.ellipsis,style: Styles.textStyle14,),
                        Row(
                          children: [
                            const Icon(Icons.person,size: 12,),
                            const SizedBox(width: 1.5,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .3,
                              child: Text('Robertson Connie',maxLines: 1,overflow: TextOverflow.ellipsis,style: Styles.textStyle12.copyWith(color: const Color(0xffB8B8D2)),)),
                          ],
                        ),
                        Row(
                          children: [
                            Text( r'$250',style: Styles.textStyle16.copyWith(color: const Color(0xff3D5CFF)),),
                            const SizedBox(width: 20,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .25,
                              child: Text('16 hours',maxLines: 1,overflow: TextOverflow.ellipsis,style: Styles.textStyle10.copyWith(color: const Color(0xffFF6905)),)),
                          ],
                        )
                      ],
                                       ),
                   )
                ],
              ),
            ),
          );
  }
}