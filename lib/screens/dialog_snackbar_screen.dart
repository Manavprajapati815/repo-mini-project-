import 'package:flutter/material.dart';

class DialogSnackbarScreen extends StatelessWidget {
  const DialogSnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialogs & Snackbar')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text explanation for user
              const Text(
                'This screen demonstrates how to use two important UI elements in Flutter:\n\n'
                '1. Dialog: A pop-up alert used to grab user attention or get confirmation.\n'
                '2. Snackbar: A brief message shown at the bottom, often used for notifications.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Button to show dialog
              ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Alert'),
                    content: const Text('This is a dialog'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                child: const Text('Show Dialog'),
              ),
              const SizedBox(height: 20),

              // Button to show snackbar
              ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar!')),
                ),
                child: const Text('Show Snackbar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
