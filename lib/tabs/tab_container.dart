import 'package:flutter/material.dart';
import 'package:newsapp/model/SourceResponse.dart';
import 'package:newsapp/news/news_container.dart';
import 'package:newsapp/tabs/tab_item.dart';

class TabContainer extends StatefulWidget {
  List<Sources> sourcelist;
  TabContainer({required this.sourcelist});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourcelist.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              isScrollable: true,
              indicatorColor: Colors.transparent,
              tabs: widget.sourcelist
                  .map((source) => TabItem(
                      isSelected:
                          selectedIndex == widget.sourcelist.indexOf(source),
                      sources: source))
                  .toList(),
            ),
            Expanded(
                child: NewsContainer(source: widget.sourcelist[selectedIndex]))
          ],
        ));
  }
}
