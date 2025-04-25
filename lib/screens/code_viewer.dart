import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeViewerScreen extends StatelessWidget {
  final String code;
  final String title;
  const CodeViewerScreen({super.key, required this.code, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$title Code')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              code,
              style: const TextStyle(fontFamily: 'Courier', fontSize: 14),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: code));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Code copied to clipboard!')),
                );
              },
              icon: const Icon(Icons.copy),
              label: const Text('Copy Code'),
            )
          ],
        ),
      ),
    );
  }
}
