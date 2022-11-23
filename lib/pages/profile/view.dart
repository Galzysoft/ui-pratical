import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ProfilePage extends StatelessWidget {
  final logic = Get.put(ProfileLogic());
  final state = Get.find<ProfileLogic>().state;

  // here we declare  our form key to enab;le us to validate our app
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            title: Text("Admin"),
            collapsedHeight: kToolbarHeight,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(2000),
                            bottomRight: Radius.circular(2000))),
                  ),
                )),
            expandedHeight: 200,
          ),
          SliverFillRemaining(
            child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  // borderSide: BorderSide(
                                  //     color: Colors.lightGreen, width: 5)
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  // borderSide: BorderSide(
                                  //     color: Colors.lightGreen, width: 5)
                                ),
                                // labelText: "Name" ,
                                //   labelStyle: TextStyle(color: Colors.white, fontWeight:FontWeight.bold,fontSize: 12) ,
                                // hintText: "Name",
                                // hintStyle:
                                //     TextStyle(color: Colors.white, fontSize: 12),
                                label: Row(
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.person_add_alt_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                prefixIcon: Icon(
                                  Icons.add_alarm,
                                  color: Colors.white,
                                ),
                                prefix: Icon(
                                  Icons.add_alarm,
                                  color: Colors.yellow,
                                ),
                                fillColor: Colors.black,
                                filled: true),
                            // autovalidateMode: AutovalidateMode.always,
                            obscureText: false,
                            validator: (value) {
                              if (value!.length < 6) {
                                return "invalid number";
                              }
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            controller: logic.username),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  // borderSide: BorderSide(
                                  //     color: Colors.lightGreen, width: 5)
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  // borderSide: BorderSide(
                                  //     color: Colors.lightGreen, width: 5)
                                ),
                                // labelText: "Name" ,
                                //   labelStyle: TextStyle(color: Colors.white, fontWeight:FontWeight.bold,fontSize: 12) ,
                                // hintText: "Name",
                                // hintStyle:
                                //     TextStyle(color: Colors.white, fontSize: 12),
                                label: Row(
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.person_add_alt_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                prefixIcon: Icon(
                                  Icons.add_alarm,
                                  color: Colors.white,
                                ),
                                prefix: Icon(
                                  Icons.add_alarm,
                                  color: Colors.yellow,
                                ),
                                fillColor: Colors.black,
                                filled: true),
                            // autovalidateMode: AutovalidateMode.always,
                            obscureText: false,
                            validator: (value) {
                              if (value!.length < 6) {
                                return "invalid number";
                              }
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            controller: logic.username),

                        ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                        backgroundColor: Colors.lightGreen,
                                        content: Row(
                                          children: [
                                            Text("login"),
                                            Icon(Icons.done_all)
                                          ],
                                        )));
                              }
                              print(logic.username.text);
                            },
                            child: Text("Login"))
                        // TextField()
                      ],
                    ),
                  ),
                )),
          )
          // SliverList(
          //     delegate: SliverChildBuilderDelegate(
          //   (context, index) =>
          //       SizedBox(height: 100, child: Card(color: Colors.white,child: Center(child: Text("$index",style: TextStyle(color: Colors.white,fontSize: 17),)),)),
          // ))
        ],
      ),
    );
  }
}
