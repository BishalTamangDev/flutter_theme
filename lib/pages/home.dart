import 'package:flutter/material.dart';
import 'package:theme_git/pages/elements.dart';
import 'package:theme_git/theme/theme_manager.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 16.0,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ThemeManager().getThemeMode == ThemeMode.dark
                ? Column(
                    spacing: 16.0,
                    children: [
                      Icon(Icons.dark_mode_outlined, size: 32.0),
                      Text(
                        "Dark Mode",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  )
                : Column(
                    spacing: 16.0,
                    children: [
                      Icon(Icons.light_mode_outlined, size: 32.0),
                      Text(
                        "Light Mode",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
            Switch(
              value:
                  ThemeManager().getThemeMode == ThemeMode.light ? false : true,
              onChanged: (newValue) {
                ThemeManager().toggleThemeMode(
                  ThemeManager().getThemeMode == ThemeMode.dark ? true : false,
                );
              },
            ),
            Text(
              "Toggle the switch to change the application theme.",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.grey,
                  ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Elements()),
                );
              },
              child: const Row(
                spacing: 8.0,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Next Page"),
                  Icon(Icons.double_arrow_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
