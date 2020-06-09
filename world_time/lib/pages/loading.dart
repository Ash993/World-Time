import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading>  {

  String time  = 'loading';
  void setupWorldTime() async{
    WorldTime instance =WorldTime(location: 'berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    //print(instance.time);
   // setState(() {
     // time =instance.time;
    // });
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'locaton': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime,

    });

  }


  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    setupWorldTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[380],
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
