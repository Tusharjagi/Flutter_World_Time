import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data =  ModalRoute.of(context)?.settings?.arguments as Map;
    print(data);

    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context,'/location');
                  },
                  icon: const Icon(Icons.edit_location),
                  label : const Text('Edit Loaction'),
              ),
            ],
          ),
      ),
    );
  }
}
