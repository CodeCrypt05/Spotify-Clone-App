import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone_app/provider/count.dart';
import 'package:spotify_clone_app/screen/second_screen.dart';

class HomeProvider extends StatelessWidget {
  const HomeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    Count countProvider = Provider.of<Count>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider App"),
      ),
      body: SafeArea(
        child: Consumer(
          builder: (BuildContext context, Count value, Widget? child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SecondScreen(),
            ),
          );
        },
      ),
    );
  }
}
