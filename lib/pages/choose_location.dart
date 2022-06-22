import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'India', flag: 'india.png', url: 'Etc/GMT+5:30'),
    WorldTime(location: 'London', flag: 'uk.png', url: 'Europe/London'),
    WorldTime(location: 'New York', flag: 'usa.png', url: 'America/New_York'),
    WorldTime(location: 'Hong Kong', flag: 'Hong_Kong.png', url: 'Asia/Hong_Kong'),
    WorldTime(location: 'Melbourne', flag: 'Aust.png', url: 'Australia/Melbourne' ),
    WorldTime(location: 'Sydney', flag: 'Aust.png', url: 'Australia/Sydney' ),
    WorldTime(location: 'Berlin', flag: 'berlin.png', url: 'Europe/Berlin' ),
    WorldTime(location: 'Athens', flag: 'germany.png', url: 'Europe/Berlin' ),
    WorldTime(location: 'Cairo', flag: 'egypt.png', url: 'Africa/Cairo' ),
    WorldTime(location: 'Nairobi', flag: 'kenya.png', url: 'Africa/Nairobi' ),
    WorldTime(location: 'Chicago', flag: 'usa.png', url: 'America/Chicago' ),
    WorldTime(location: 'Seoul', flag: 'south_korea.png', url: 'Asia/Seoul'),
    WorldTime(location: 'Jakarta', flag: 'indonesian.png', url: 'Asia/Jakarta' ),
  ];

  void updateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
  //  Navigate to home screen
    Navigator.pop(context, {
      'location' :instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
      'isDaytime' : instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9D5CA),
      appBar: AppBar(
        backgroundColor: const Color(0xff827397),
        title: const Text('Choose a Location'),
        elevation: 0,
      ),
      body: ListView.builder(

        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(

              child: ListTile(

                onTap: (){
                  updateTime(index);
                },
                title: Text(
                    style : const TextStyle (
                      fontSize: 20.0,
                    ),
                    locations[index].location
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
