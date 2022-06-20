import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
  //  simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
        return 'tango';
    });

    //Simulate network request to get bio of the
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'or bhai kya haaal hain ';

    });
    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("Hey tango");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a Location'),
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
          });
        },
      ),
    );
  }
}
