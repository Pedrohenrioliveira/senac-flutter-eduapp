import 'package:eduapp/Utils/colors.dart';
import 'package:eduapp/widgets/category.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
        headerParts(),
          const SizedBox(height:10),
          Column(children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Explore Categories",
              style: TextStyle(
                fontSize: 18,
               fontWeight: FontWeight.w600,
               ),
               ),
               TextButton(
                onPressed: () {},
                 child: Text(
                  "See all",
                  style: TextStyle(color: primaryColor1),
                  ),
                 ),   
              ],
             ),
            ),
            SizedBox(
              height: 580,
              child: GridView.builder(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  ),
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  final category = categoryList[index];
                  return GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                       decoration: BoxDecoration(
                        color: Colors.white,
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 7,
                            spreadRadius: 1,

                            ),
                         ],
                       ),
                         child: Column(
                          children: [
                            Image.asset(category.coverImage,
                             height: 150,
                             ),
                             SizedBox(height: 10),
                             Text(category.name,style: TextStyle(fontWeight: ),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("${category.noOfCourses} Courses",
                               style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                                ),
                               ),

                          ],
                         ),
                      ),
                    );
                  }
                ),
              )
            ],
          ),
        ],
      ),
    );
  }


                

  Container headerParts() {
    return Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration( 
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF6A11CB),
                Color(0xFF2575FC)
            ]
            )
          ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Hello,\nGood Morning",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
               fontWeight: FontWeight.bold,
               height: 1.2),
              ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle, 
                color: kPrimaryLight,
              ),
                child: const Padding(padding: EdgeInsets.all(8), 
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                )
                ),
                ),
            ],
          ),
          SizedBox(height: 25),
          TextFormField(decoration: InputDecoration( 
            prefixIcon: const Icon
            (Icons.search,
             color: Colors.black45,
            size: 26,
            ),
            suffixIcon: const Icon(
              Icons.mic,
               color: primaryColor1,
                size: 25,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "search your topic",
                labelStyle: TextStyle(color: Colors.black45),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                isDense: true,
               ),
              ),
            ],
          ),
        );
  }
}

