import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyDetails extends StatelessWidget {
  final String month;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  MyDetails(this.month);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final title = 'Details Page';
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('You selected $month'),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final List<String> items = ['January', 'February', 'March'];
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final title = 'MyAwesome App';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              // ignore: unnecessary_string_interpolations
              title: Text('${items[index]}'),
              // When the child is tapped, show a snackbar.
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyDetails(items[index])),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
