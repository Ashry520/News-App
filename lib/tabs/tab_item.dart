import 'package:flutter/material.dart';
import 'package:newsapp/model/SourceResponse.dart';

class TabItem extends StatelessWidget {
  Sources sources;
  bool isSelected;
  TabItem({required this.sources, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      decoration: BoxDecoration(
          color:
              isSelected ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Theme.of(context).primaryColor, width: 3)),
      child: Text(
        sources.name ?? "",
        style: isSelected
            ? Theme.of(context).textTheme.titleLarge
            : Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Theme.of(context).primaryColor),
      ),
    );
  }
}
