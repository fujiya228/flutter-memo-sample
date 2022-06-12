import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          title: const TextField(
            cursorColor: Colors.black,
            decoration: null,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const TextField(
                  cursorColor: Colors.black,
                  maxLines: null,
                  decoration: null,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
