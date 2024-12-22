import 'package:flutter/material.dart';

class Elements extends StatelessWidget {
  const Elements({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Elements"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            spacing: 16.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),

              // texts
              Text(
                "Headline",
                style: _textTheme.headlineLarge,
              ),
              Text(
                "Title: The quick brown fox jumps over the lazy dog.",
                style: _textTheme.titleLarge,
              ),
              Text(
                "Body: The quick brown fox jumps over the lazy dog.",
                style: _textTheme.bodyLarge,
              ),
              Text(
                "Label: The quick brown fox jumps over the lazy dog.",
                style: _textTheme.labelLarge,
              ),

              // images
              Image.asset('assets/images/image-1.jpg'),

              //   buttons
              Row(
                spacing: 8.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (context) => AlertDialog(
                          title: Text("Alert Dialog"),
                          content: Text(
                              "This is the content of teh alert dialog box."),
                        ),
                      );
                    },
                    child: const Text("Show Dialog"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        builder: (BuildContext context) => SizedBox(
                          child: Center(
                            child: Text("This is a bottom sheet"),
                          ),
                        ),
                      );
                    },
                    child: const Text("Show BottomSheet"),
                  ),
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Hello from snackbar!"),
                        ),
                      );
                    },
                    child: const Text("Show SnackBar"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
