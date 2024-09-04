import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/components/app_bold_text.dart';
import 'package:todo/components/app_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = [
      IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
      const SizedBox(width: 10.0),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppText('Todo Tasks'),
        actions: actions,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 2.0),
            child: Card(
              surfaceTintColor: Colors.white,
              child: ListTile(
                title: const AppBoldText('Grocery Shopping'),
                subtitle: const AppText('Buy the groceries at 6 PM tonight'),
                trailing: Chip(
                  label: const AppText('High', color: Colors.white),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      side: const BorderSide(color: Colors.white)),
                  color: MaterialStateProperty.all(Colors.red),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
