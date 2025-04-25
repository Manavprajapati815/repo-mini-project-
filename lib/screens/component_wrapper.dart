import 'package:flutter/material.dart';
import 'code_viewer.dart';

class ComponentWrapper extends StatelessWidget {
  final Widget page;
  final String code;
  final String title;

  const ComponentWrapper({super.key, required this.page, required this.code, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          page,
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton.extended(
              icon: const Icon(Icons.copy),
              label: const Text('Code'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CodeViewerScreen(code: code, title: title),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
