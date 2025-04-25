import 'package:flutter/material.dart';

class ListGridScreen extends StatelessWidget {
  const ListGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('List & Grid View'),
          bottom: const TabBar(
            tabs: [Tab(text: 'List'), Tab(text: 'Grid')],
          ),
        ),
        body: TabBarView(
          children: [
            // List View Tab
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'ListView is used to display items in a vertical scrolling list.\n'
                    'Each item is displayed one after another in a single column.\n'
                    'Useful for chat apps, menus, and long lists of data.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (_, i) => ListTile(title: Text('List Item $i')),
                  ),
                ),
              ],
            ),

            // Grid View Tab
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'GridView displays items in a grid layout.\n'
                    'Great for image galleries, product cards, and visual layouts.\n'
                    'Each row can have multiple columns.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                      4,
                      (i) => Card(
                        margin: const EdgeInsets.all(8),
                        child: Center(child: Text('Grid $i')),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
