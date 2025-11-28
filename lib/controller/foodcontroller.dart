import 'package:get/get.dart';

class Foodcontroller extends GetxController{
  RxInt counter =0.obs;
  var foodList = <Map<String, dynamic>> [
    {
    "image": "assets/images/myhomefood_image.1.jpg",
    "description": "Meatball Sweetie",
    "text": "4.7",
    "amount": 63.500,
  },
  {
    'image': "assets/images/myhomefood_image.2.jpg",
    "description": "Noodle Ex",
    "text": "4.8",
    "amount": 42.000,
  },
  {
    'image': "assets/images/myhomefood_image.3.jpg",
    "description": "Burger Ala Ala",
    "text": "4.7",
    "amount": 53.000,
  },
  {
    'image': "assets/images/myhomefood_image.4.jpg",
    "description": "Chicken Collage",
    "text": "4.5",
    "amount": 78.000,
  },
  {
    'image': "assets/images/myhomefood_image.5.jpg",
    "description": "Meatball Sweetie",
    "text": "4.7",
    "amount": 63.500,
  },
  {
    'image': "assets/images/myhomefood_image.6.jpg",
    "description": "Meatball Sweetie",
    "text": "4.7",
    "amount": 63.500,
  },
  ].obs;
  void increment () {
    counter++;
  }
  void decrement () {
   if (counter > 1) counter--;
  }
  void resetQuantity() {
    counter.value = 1;
  }
}
