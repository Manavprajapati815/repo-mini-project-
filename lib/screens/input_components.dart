import 'package:flutter/material.dart';

// A stateless widget that represents the screen showing input components
class InputComponentsScreen extends StatelessWidget {
  const InputComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title
      appBar: AppBar(title: const Text('Input Components')),

      // Body with padding around the contents
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
          children: const [
            // Description of the screen's purpose
            Text(
              'This screen demonstrates a basic input component: the TextField widget.\n\n'
              'TextFields are used to accept user input such as names, emails, passwords, and more.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Adds vertical space

            // Text input field with a label
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter text', // Label shown above the input
                border: OutlineInputBorder(), // Gives the TextField a border
              ),
            ),
          ],
        ),
      ),
    );
  }
}
