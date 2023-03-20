import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_details.dart';

import 'hadeth_tab.dart';

class HadethNameItem extends StatelessWidget {
  String title;
  Hadeth hadethModel;

  HadethNameItem(this.hadethModel, this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadethDetails.routeName,
          arguments: hadethModel,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6),
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
