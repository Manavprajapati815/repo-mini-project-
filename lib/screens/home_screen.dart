import 'package:flutter/material.dart';
import '../models/component_info.dart';
import '../data/component_data.dart';
import 'component_wrapper.dart';

class HomeScreen extends StatefulWidget {
  final bool isDark;
  final VoidCallback onThemeToggle;
  const HomeScreen({super.key, required this.isDark, required this.onThemeToggle});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<ComponentInfo> components = [];
  List<ComponentInfo> filtered = [];

  @override
  void initState() {
    super.initState();
    components = getComponents();
    filtered = components;
  }

  void _filter(String query) {
    setState(() {
      filtered = components
          .where((c) => c.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Component Explorer'),
        actions: [
          IconButton(
            icon: Icon(widget.isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.onThemeToggle,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchController,
              onChanged: _filter,
              decoration: InputDecoration(
                hintText: 'Search widget...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Theme.of(context).cardColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Widget Categories',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(title: Text('More coming soon...'))
          ],
        ),
      ),
      body: ListView.separated(
        itemCount: filtered.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final item = filtered[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.description),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ComponentWrapper(
                  page: item.page,
                  title: item.title,
                  code: item.code,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}