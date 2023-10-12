import 'package:flutter/material.dart';

class DataItem extends StatelessWidget {
  const DataItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                color: Color(0xffECEEEC),
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        const Column(
          children: [Text('data'), Text('data'), Text('data')],
        )
      ],
    );
  }
}
