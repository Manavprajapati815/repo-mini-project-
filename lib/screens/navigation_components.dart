import 'package:flutter/material.dart';

// A stateless widget that demonstrates basic navigation in Flutter
class NavigationComponentsScreen extends StatelessWidget {
  const NavigationComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar for the main screen
      appBar: AppBar(title: const Text('Navigation')),

      // Centered content on the screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Description text explaining navigation
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'This screen demonstrates how to navigate between pages in Flutter using Navigator.\n\n'
                'When you tap the button, it pushes a new page onto the navigation stack.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),

            // Button that triggers navigation to another screen
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Scaffold(
                    appBar: AppBar(title: const Text('Next Page')),
                    body: const Center(child: Text('Hello from another page!')),
                  ),
                ),
              ),
              child: const Text('Go to Next'),
            ),
          ],
        ),
      ),
    );
  }
}
