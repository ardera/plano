import 'package:flutter/material.dart';
import 'package:plano/stores/director.dart';
import 'package:provider/provider.dart';

/*

  SleepWakeWidget
  -------------

  This widget controls the layout of the sleep/wake screen when
  the vehicle changes power modes

*/

class SleepWakeLayout extends StatelessWidget {
  const SleepWakeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue,
            ),
            child: Text(
              'Curtains',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          TextButton(
            onPressed: () {
              var director = context.read<DirectorStore>();
              director.hideSleepLayout();
            },
            child: const Text('Hide Curtain'),
          ),
        ],
      ),
    );
  }
}
