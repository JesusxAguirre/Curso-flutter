import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button screens')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated')),
            ElevatedButton(onPressed: null, child: Text('Disabled')),
            ElevatedButton.icon(
              icon: Icon(Icons.access_alarm_rounded),
              onPressed: () {},
              label: Text('Elevated icon'),
            ),

            FilledButton(onPressed: () {}, child: Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              label: Text('icon'),
              icon: Icon(Icons.abc),
            ),
            OutlinedButton(onPressed: () {}, child: Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('icon'),
              icon: Icon(Icons.account_balance_wallet_outlined),
            ),

            TextButton(onPressed: () {}, child: Text('TEXT')),
            TextButton.icon(
              onPressed: () {},
              label: Text('icon'),
              icon: Icon(Icons.telegram),
            ),
          ],
        ),
      ),
    );
  }
}
