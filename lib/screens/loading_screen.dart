import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:climate_app/screens/location_screen.dart';
import 'package:climate_app/services/weather.dart';
import 'package:flutter/material.dart';




class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
@override
  void initState() {
    // TODO: implement initState
    getLocationData();
  }
  void getLocationData() async {
  //get weather data
WeatherModel weatherModel = WeatherModel();
var weatherData = await weatherModel.getLocationWeather();
//pushes to location screen and sends weather data
Navigator.push(context, MaterialPageRoute(builder: (context){
  return LocationScreen(locationWeather:weatherData,);
}));
  }


  @override
  Widget build(BuildContext context) {

return Scaffold(
body:Center(
  child: SpinKitDoubleBounce(
    color: Colors.white,
    size: 100.0,
  ),
)
);
  }
}
