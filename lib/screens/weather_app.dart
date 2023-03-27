

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/models/weather_locations.dart';
import 'package:weather_app/widgets/single_weather.dart';
import 'package:weather_app/widgets/slider_dot.dart';


class WeatherApp extends StatefulWidget {
  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  int _currentPage=0;
  late String bgImg;

  _onPageChanged(int index){
    setState(() {
      _currentPage=index;
    });
  }
  Widget build(BuildContext context) {
    if(locationList[_currentPage].weatherType=='Sunny'){
      bgImg='assets/sunny.jpg';
    }else if(locationList[_currentPage].weatherType=='Night'){
      bgImg='assets/night.jpg';
    }else if(locationList[_currentPage].weatherType=='Rain'){
      bgImg='assets/rainy.jpg';
    }else if(locationList[_currentPage].weatherType=='Cloudy'){
      bgImg='assets/cloudy.jpeg';
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                bgImg,
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
          child: Stack(
        children: [
          Image.asset(
            bgImg,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            margin: EdgeInsets.only(top: 140, left: 15),
            child: Row(
              children: [
             
              for(int i =0; i<locationList.length;i++)

              if(i== _currentPage)
              SliderDot(isActive: true)
              else
                  SliderDot(isActive: false)
             
                
              ],
            ),
          ),
          PageView.builder(
            onPageChanged: _onPageChanged,
            scrollDirection: Axis.horizontal,
            
            itemCount: locationList.length,
            itemBuilder: (ctx,i)=>SingleWeather(index: i,))
          
        ],
      )),
    );
  }
}
