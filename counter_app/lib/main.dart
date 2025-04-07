import 'package:counter_app/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Counter app',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
        backgroundColor: theme.primaryColorLight,
        actions: [
          IconButton(
            onPressed: counterProvider.reset,
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counterProvider.word,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
            ),
            Text('${counterProvider.count}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counterProvider.increment,
            elevation: 5,
            child: Icon(Icons.plus_one),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: counterProvider.decrement,
            elevation: 5,
            child: Icon(Icons.exposure_minus_1_rounded),
          ),

          SizedBox(height: 10),

          FloatingActionButton(
            onPressed: counterProvider.reset,
            child: Icon(Icons.restart_alt_outlined),
          ),
        ],
      ),
    );
  }
}
