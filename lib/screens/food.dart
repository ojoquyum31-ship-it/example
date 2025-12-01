import 'package:example/constants/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

int quantity = 1;
final List<Map<String, dynamic>> foodItem = [
  {
    "image": "assets/images/myhomefood_image.1.jpg",
    "description": "Meatball Sweetie",
    "icon": Icons.star_rounded,
    "text": "4.7",
    "amount": 63.500,
  },
  {
    'image': "assets/images/myhomefood_image.2.jpg",
    "description": "Noodle Ex",
    "icon": Icons.star_rounded,
    "text": "4.8",
    "amount": 42.000,
  },
  {
    'image': "assets/images/myhomefood_image.3.jpg",
    "description": "Burger Ala Ala",
    "icon": Icons.star_rounded,
    "text": "4.7",
    "amount": 53.000,
  },
  {
    'image': "assets/images/myhomefood_image.4.jpg",
    "description": "Chicken Collage",
    "icon": Icons.star_rounded,
    "text": "4.5",
    "amount": 78.000,
  },
  {
    'image': "assets/images/myhomefood_image.5.jpg",
    "description": "Meatball Sweetie",
    "icon": Icons.star_rounded,
    "text": "4.7",
    "amount": 63.500,
  },
  {
    'image': "assets/images/myhomefood_image.6.jpg",
    "description": "Meatball Sweetie",
    "icon": Icons.star_rounded,
    "text": "4.7",
    "amount": 63.500,
  },
];

List<String> foodCategory = [
  "Dinner Food",
  "Economic Food",
  "Hot Food",
  "Family",
];

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // surfaceTintColor: Colors.transparent,
        // backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.only(right: 20.w, top: 20.h, bottom: 20.h),
          width: 1.sw,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 6.w),
              Text("Food"),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.search),
                ),
                hintText: "Search food",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                 List.generate(foodCategory.length, (index){
                   var category = foodCategory[index];
                   return  Container(
                     padding: EdgeInsets.only(
                       top: 4.h,
                       bottom: 4.h,
                       left: 8.w,
                       right: 8.w,
                     ),
                     margin: EdgeInsets.only(right: 18.w ),
                     decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(6),
                     ),
                     child: Text(
                       category,
                       style: TextStyle(
                         fontFamily: AppSting.interFont,
                         fontSize: 14.sp,
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                   );
                 }),
                children: [
                  //SizedBox(width: 18.w,),
                  Container(
                    padding: EdgeInsets.only(
                      top: 4.h,
                      bottom: 4.h,
                      left: 8.w,
                      right: 8.w,
                    ),
                    decoration: BoxDecoration(
                      color:  const Color.fromARGB(255, 226, 224, 224),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "Dinner Food",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Container(
                    padding: EdgeInsets.only(
                      top: 4.h,
                      bottom: 4.h,
                      left: 8.w,
                      right: 8.w,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 224, 224),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "Economic Food",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Container(
                    padding: EdgeInsets.only(
                      top: 4.h,
                      bottom: 4.h,
                      left: 8.w,
                      right: 8.w,
                    ),
                    decoration: BoxDecoration(
                      color:  const Color.fromARGB(255, 226, 224, 224),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "Hot Food",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 18.w),
                  Container(
                    padding: EdgeInsets.only(
                      top: 4.h,
                      bottom: 4.h,
                      left: 8.w,
                      right: 8.w,
                    ),
                    decoration: BoxDecoration(
                      color:  const Color.fromARGB(255, 226, 224, 224),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      "family",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.67,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: foodItem.length,
                  itemBuilder: (context, index) {
                    final food = foodItem[index];
                    return FoodCard(
                      ontap: () {
                        buildFoodDetailModal(context, food);
                      },
                      image: food["image"],
                      description: food["description"],
                      text: food["text"],
                      icon: food["icon"],
                      amount: food["amount"],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String image, description, text;
  final IconData icon;
  final double amount;
  final VoidCallback? ontap;
  const FoodCard({
    super.key,
    required this.image,
    required this.description,
    required this.text,
    required this.icon,
    required this.amount,
    required this.ontap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.r),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(icon, color: Colors.yellow),
                      Text(
                        text,
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text('Rp$amount'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


Future<dynamic> buildFoodDetailModal(
    BuildContext context,
    Map<String, dynamic> food,
    ) async{
  return showModalBottomSheet(
    context: context,
    builder: (_) => Container(
      height: 0.61.sh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28.r),
              topRight: Radius.circular(28.r),
            ),
            child: Image.asset(
              food["image"],
              height: 300.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.w),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  food["description"],
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  children: [
                    Icon(
                      food["icon"],
                      color: Colors.yellow,
                      size: 40,
                    ),
                    Text(
                      food['text'],
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    StatefulBuilder(
                      builder: (context, setState) {
                        return
                          Container(
                            padding: EdgeInsets.only(right: 20.w ),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (quantity > 1) {
                                        quantity--;
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 19.5.h,
                                    width: 19.5.w,
                                    decoration:
                                    BoxDecoration(
                                      color:
                                      Colors.grey,
                                      shape: BoxShape
                                          .circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          color: Colors
                                              .white,
                                          fontSize: 16.sp,
                                          fontWeight:
                                          FontWeight
                                              .w900,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 19.5.w,),
                                Text(
                                  quantity
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight:
                                    FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 19.5.w,),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (quantity == 1);
                                      quantity++;
                                    });
                                  },
                                  child: Container(
                                    height: 19.5,
                                    width: 19.5,
                                    decoration:
                                    BoxDecoration(
                                      color:
                                      Colors.teal,
                                      shape: BoxShape
                                          .circle,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 15.sp,
                                          color: Colors
                                              .white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                      },
                    ),
                  ],
                ),
                Text(
                  'Rp${food["amount"]}',
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 32.h),
                Padding(
                  padding: EdgeInsets.only(
                    right: 16.h,
                  ),

                  child: Container(
                    height: 45.h,
                    width: 371.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFF008C8C),
                      borderRadius:
                      BorderRadius.circular(6.r),
                    ),
                    child: Center(
                      child: Text(
                        "Place Order",
                        style: TextStyle(
                          color: const Color(
                            0xFFFFFFFF,
                          ),
                          fontFamily: "Inter",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    isScrollControlled: true,
  );
}
