import 'package:passing_data_flutter/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/produk1.jpg',
    name: 'Umroh Plus Turkey',
    type: 'Double',
    startTimes: ['9:00', '11:00'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/produk2.jpg',
    name: 'Umroh Plus Dubai',
    type: 'Triple, Single',
    startTimes: ['12:00', '22:00'],
    rating: 4,
    price: 100,
  ),
];
