import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class IntlPage extends StatefulWidget {
  const IntlPage({Key? key}) : super(key: key);

  @override
  _IntlPageState createState() => _IntlPageState();
}

class _IntlPageState extends State<IntlPage> {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    var veri = DateTime.now().toIso8601String();
    print(veri);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intl Page'),
      ),
      body: Center(
        child: Text(
          DateFormat.yMMMd('en').format(DateTime.parse(veri)),
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
