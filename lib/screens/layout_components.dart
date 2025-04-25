import 'package:flutter/material.dart';

// A stateless widget that represents a screen displaying layout widgets
class LayoutComponentsScreen extends StatelessWidget {
  const LayoutComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title "Layout Widgets"
      appBar: AppBar(title: const Text('Layout Widgets')),

      // Body of the screen using Column to arrange widgets vertically
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding for better layout
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
          children: const [
            Row(
              // MainAxisAlignment.spaceAround places equal space before, between, and after the icons
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              // Three star icons placed horizontally
              children: [Icon(Icons.star), Icon(Icons.star), Icon(Icons.star)],
            ),  // Introductory text to explain the purpose of the layout
            Text(
              'This screen demonstrates how to use basic layout widgets in Flutter such as Column and Row. '
              'These are commonly used to arrange elements vertically and horizontally in a Flutter app.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Spacing between elements

            // Label before the Row widget
            Text(
              'This is a Row widget displaying three star icons horizontally:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Row widget arranges child widgets horizontally
          
          ],
        ),
      ),
    );
  }
}
