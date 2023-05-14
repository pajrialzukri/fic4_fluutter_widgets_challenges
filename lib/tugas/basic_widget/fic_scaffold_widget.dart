import 'package:flutter/material.dart';

class FICScaffoldWidget extends StatelessWidget {
  const FICScaffoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Scaffold, Appbar"),
      ),
      body: const Center(
        child: Text('You have pressed the button 0 times.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
