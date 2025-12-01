import 'package:example/controller/foodcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WithGetx extends StatelessWidget {
  WithGetx({super.key});
  final Foodcontroller controller = Get.put(Foodcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 15.w, right: 20.w, top: 40.h),
          width: 1.sw,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 2.w),
              Text("food"),
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
                prefixIcon: Icon(Icons.search),
                hintText: "search food",
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
                      color: const Color.fromARGB(255, 226, 224, 224),
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

            Obx(
              () => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemCount: controller.foodList.length,
                    itemBuilder: (context, index) {
                      final item = controller.foodList[index];
                      return FoodCard(
                        ontap: () {
                          controller.resetQuantity();
                          Get.bottomSheet(
                            Container(
                              child: FractionallySizedBox(
                                heightFactor: 0.7,
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(28.r),
                                          topRight: Radius.circular(28.r),
                                        ),
                                        child: Image.asset(
                                          item["image"],
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
                                              item["description"],
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
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                ),

                                                Text(
                                                  item['text'],
                                                  style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontSize: 24.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                               
                                               const Spacer(),
                                                Obx(
                                                  () => Container(
                                                    padding: EdgeInsets.only(right: 20.w ),
                                                    child: Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: controller
                                                              .decrement,
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
                                                                  fontSize: 20.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                    
                                                        SizedBox(width: 19.5.w),
                                                    
                                                        Text(
                                                          controller.counter.value
                                                              .toString(),
                                                          style: TextStyle(
                                                            fontSize: 16.sp,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                    
                                                        SizedBox(width: 19.5.w),
                                                    
                                                        GestureDetector(
                                                          onTap: controller
                                                              .increment,
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
                                                                  fontSize: 15.sp,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 24.h),
                                            Text(
                                              'Rp${item["amount"]}',
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
                                                  color: const Color(
                                                    0xFF008C8C,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        6.r,
                                                      ),
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
                                                      fontWeight:
                                                          FontWeight.w500,
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
                              ),
                            ),
                            isScrollControlled: true,
                            backgroundColor: Colors.white,
                          );
                        },
                        image: item['image'],
                        description: item['description'],
                        text: item['text'],
                        icon: Icons.star_rounded,
                        amount: item['amount'],
                      );
                    },
                  ),
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
