import 'package:flutter/material.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    required this.city,
    required this.dateTime,
    required this.temparature,
    required this.weatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Srinagar',
    dateTime: '02:50 AM — Friday, 24 Mar 2023',
    temparature: '24\u2103',
    weatherType: 'Night',
    iconUrl: 'assets/sun.svg',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),
  WeatherLocation(
    city: 'Delhi',
    dateTime: '02:20 PM — Friday, 24 Mar 2023',
    temparature: '15\u2103',
    weatherType: 'Cloudy',
    iconUrl: 'assets/cloudy.svg',
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'Mumbai',
    dateTime: '09:20 AM — Friday, 24 Mar 2023',
    temparature: '17\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/sun.svg',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'Kolkata',
    dateTime: '01:20 PM — Friday, 24 Mar 2023',
    temparature: '23\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/sun.svg',
    wind: 20,
    rain: 70,
    humidity: 91,
  ),
];