import 'package:flutter/material.dart';
import 'package:ruddy/widgets/cardV.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Center(
          child: GridView(padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10,mainAxisSpacing: 10),
        children: [
          CardV(cardColor: Colors.black45,),
          CardV(Maz: "obodo"),
          CardV(style: TextStyle(fontStyle: FontStyle.normal)),
          CardV(),
          CardV(borderRadius: BorderRadius.only(topLeft: Radius.circular(120))),
          CardV(cardColor:Color(0xff00E61F) ),
          CardV(),
          CardV(),
          CardV(),
          CardV(),
          CardV(),
          CardV(),
          CardV(),
          CardV(),
          CardV(),
          CardV(),
          CardV(),
          CardV(),
        ],
      )),
      drawer: Drawer(
          backgroundColor: Colors.orange,
          child: Column(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Card(
                    color: Colors.purple,
                    child: Center(
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Tooltip(
                                child: Text(
                                  "Onyeka Oggggggggggggggggggg",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                message: "Onyeka Oggggggggggggggggggg",
                              ),
                              Text(
                                "Onyeka@gmail.com",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          ),
                        )
                      ]),

                      // child: ListTile(
                      //     leading: Container(
                      //       height: 100,
                      //       width: 100,
                      //       decoration: BoxDecoration(
                      //           color: Colors.white, shape: BoxShape.circle),
                      //     ),
                      //     title: Text(
                      //       "onyeka ejimns",
                      //       style: TextStyle(color: Colors.white,fontSize: 22),
                      //     ),
                      // subtitle: Text(
                      //   "onyekaejimns@gmail.com",
                      //   style: TextStyle(color: Colors.white,fontSize: 12),
                      // )),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings, size: 50, color: Colors.white),
                title: Text("Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  print("setting");
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, size: 50, color: Colors.white),
                title: Text("Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  print("setting");
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, size: 50, color: Colors.white),
                title: Text("Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  print("setting");
                },
              ),
              Divider(color: Colors.white),
              ListTile(
                leading: Icon(Icons.settings, size: 50, color: Colors.white),
                title: Text("Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  print("setting");
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, size: 50, color: Colors.white),
                title: Text("Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  print("setting");
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, size: 50, color: Colors.white),
                title: Text("Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold)),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  print("setting");
                },
              )
            ],
          )),
    );
  }
}

class myAppBar extends StatefulWidget implements PreferredSizeWidget {
  const myAppBar({Key? key}) : super(key: key);

  @override
  State<myAppBar> createState() => _myAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _myAppBarState extends State<myAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: Image.asset("assets/DRAWER.png", color: Colors.white),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: CardV(),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print("ada");
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.orange,
              )),
        ]);
  }
}
