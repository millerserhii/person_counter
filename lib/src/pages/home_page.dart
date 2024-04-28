import 'package:flutter/material.dart';

import '../settings/settings_view.dart';

/// Displays a list of SampleItems.
class HomePageView extends StatelessWidget {
  const HomePageView({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person Counter'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          )
        ],
      ),

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20), // Bigger button
            textStyle: const TextStyle(fontSize: 20), // Larger text
          ),
          onPressed: () {
            // Navigate to the camera page.
            Navigator.restorablePushNamed(context, '/camera');
          },
          child: const Text('Open Camera'),
        ),
      ),
    );
  }
}
