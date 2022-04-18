import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //Editing Controller for search bar
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            // bottom: Radius.circular(10),
          )),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.blueGrey,
          title: Text(
            "Doctors",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.filter_list),
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Stack(
          
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: [
                  SizedBox(height: height * 0.03),
                  Container(
                      height: 55,
                      margin: EdgeInsets.only(
                          left: width * 0.03, right: width * 0.03),
                      child: TextField(
                          controller: searchController,
                          decoration: InputDecoration(
                              hintText: "Search ",
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  size: 28,
                                  color: Colors.blue,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.black54),
                                borderRadius: BorderRadius.circular(15),
                              )))),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset('assets/images/doctor.jpg')),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  //Categories Section 

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Categories",
                                style: TextStyle(
                                    color: Colors.blue,fontSize: 20, fontWeight: FontWeight.w600),
                                // textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Text("View All", style: TextStyle(
                              shadows: [
                                Shadow(color: Colors.blue, offset: Offset(0, -1))
                              ],
                     
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                              decorationThickness: 4,
                              decorationStyle: TextDecorationStyle.solid,
                              color: Colors.blue,),
                          )
                          )],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 26),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Image.network(
                                        "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "General Physicial",
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    " General Physician",
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.shade200,
                                    ),
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1584434081454-2a898b8e33d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Dentists",
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Image.network(
                                        "https://images.unsplash.com/photo-1584434081454-2a898b8e33d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    " Dentists",
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Image.network(
                                        "https://images.unsplash.com/photo-1618939304347-e91b1f33d2ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Cardio",
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Image.network(
                                        "https://images.unsplash.com/photo-1618939304347-e91b1f33d2ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                                    alignment: Alignment.center,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Heart Issue",
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),

                  // Need help section

                  Column(
                    children: [
                      Text(
                        "Need Help with Doctor and Info?",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_ic_call,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Call us Now",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(color: Colors.red, offset: Offset(0, -5))
                              ],
                              color: Colors.transparent,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                              decorationThickness: 4,
                              decorationStyle: TextDecorationStyle.solid,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //Suggestions Section 

                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Suggestions",
                          style:
                              TextStyle(color: Colors.blue,fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Text("View All", style: TextStyle(
                              shadows: [
                                Shadow(color: Colors.blue, offset: Offset(0, -1))
                              ],
                     
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                              decorationThickness: 4,
                              decorationStyle: TextDecorationStyle.solid,
                              color: Colors.blue,),
                          )
                          )],
                      
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //Using Aboutus Class and it's parameter for creating the suggestion section.

                   Padding(
                     padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 12),
                     child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Aboutus(
                      height: 190,
                      width: 240,
                      radius: 8,
                      aboutusdetail: "Dr.Prashant Nel",
                      title: "Cardio",
                      imageurl:
                          "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                       height: 190,
                      width: 240,
                      radius: 8,
                      aboutusdetail: "Dr.Prashant Nel",
                      title: "Cardio",
                      imageurl:
                          "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                      height: 190,
                      width: 240,
                      radius: 8,
                      aboutusdetail: "Dr.Prashant Nel",
                      title: "Cardio",
                      imageurl:
                          "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
                SizedBox(
                  width: 8,
                ),
                Aboutus(
                      height: 190,
                      width: 240,
                      radius: 8,
                      aboutusdetail: "Dr.Prashant Nel",
                      title: "Cardio",
                      imageurl:
                          "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
              ],
            ),
          ),
                   ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Creating class for Suggestion section where images and the titles of the doctors are availables:
// We can also create new page and just import that page for code minimization

class Aboutus extends StatelessWidget {
  final imageurl;
  final aboutusdetail;
  final title;
  final double height;
  final double width;
  final double radius;

  //Creating constructor of the class

  Aboutus(
      {this.imageurl,
      this.aboutusdetail,
      this.title,
      this.height = 10,
      this.width = 10,
      this.radius = 10});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              image: new DecorationImage(
                image: NetworkImage(imageurl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          aboutusdetail,style: TextStyle(color: Colors.blue,fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
