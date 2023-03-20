import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String content;
  int index;

  VerseWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      alignment: Alignment.center,
      child: Column(
        children: [
          Center(
            child: Text(
              '$content { ${index + 1} }',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
