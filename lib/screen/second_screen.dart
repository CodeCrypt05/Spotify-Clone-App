import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone_app/provider/count.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Count countProvider = Provider.of<Count>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider App"),
      ),
      body: SafeArea(
        child: Consumer<Count>(
          builder: (BuildContext context, value, Widget? child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'This is 2nd screen',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  value.count.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        countProvider.increaseNumber(value.count);
                      },
                      icon: Icon(Icons.add),
                    ),
                    IconButton(
                      onPressed: () {
                        countProvider.decreaseNumber(value.count);
                      },
                      icon: Icon(Icons.horizontal_rule),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
