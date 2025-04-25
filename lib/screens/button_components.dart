import 'package:flutter/material.dart';

// A stateless widget representing a screen to demonstrate different types of buttons
class ButtonComponentsScreen extends StatelessWidget {
  const ButtonComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with the screen title
      appBar: AppBar(title: const Text('Button Components')),

      // Center the content vertically and horizontally
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center column content vertically
          children: [
            // Explanation text
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'This screen showcases the three main types of buttons in Flutter:\n'
                '- ElevatedButton: Raised button for emphasis\n'
                '- OutlinedButton: Button with an outlined border\n'
                '- TextButton: Flat button with no border or elevation',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),

            // ElevatedButton: commonly used for primary actions
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('Elevated'),
            ),

            const SizedBox(height: 10), // Spacing between buttons

            // OutlinedButton: used for medium emphasis actions
            OutlinedButton(
              onPressed: () {}, 
              child: const Text('Outlined'),
            ),

            const SizedBox(height: 10),

            // TextButton: used for low emphasis or inline actions
            TextButton(
              onPressed: () {}, 
              child: const Text('Text'),
            ),
          ],
        ),
      ),
    );
  }
}
