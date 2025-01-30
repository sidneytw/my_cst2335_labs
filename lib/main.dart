import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHome(),
      debugShowCheckedModeBanner: false, // hide debug
    );
  }
}


class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("BROWSE CATEGORIES"),
      ),
      */

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("BROWSE CATEGORIES",
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  )
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Not sure about exactly which recipe you're looking for? \n"
                        "Do a search, or dive into our most popular categories.",
                    style: const TextStyle(fontSize: 15),
                  )
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("BY MEAT",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/beef.jpg'),
                            radius: 40
                        ),
                        Text("BEEF",
                          style: const TextStyle(
                              fontSize: 18, fontWeight:FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          CircleAvatar(
                              backgroundImage: AssetImage('images/chicken.jpg'),
                              radius: 40
                          ),
                          Text("CHICKEN",
                            style: const TextStyle(
                                fontSize: 18, fontWeight:FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/pork.jpg'),
                            radius: 40
                        ),
                        Text("PORK",
                          style: const TextStyle(
                              fontSize: 18, fontWeight:FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/seafood.jpg'),
                            radius: 40
                        ),
                        Text("SEAFOOD",
                          style: const TextStyle(
                              fontSize: 18, fontWeight:FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("BY COURSE",
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  )
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/main_dishes.jpg'),
                            radius: 40
                        ),
                        Text("Main Dishes",
                          style: const TextStyle(
                              fontSize: 15, fontWeight:FontWeight.bold, color: Colors.black, backgroundColor: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/salad.jpg'),
                            radius: 40
                        ),
                        Text("Salad Recipe",
                          style: const TextStyle(
                              fontSize: 15, fontWeight:FontWeight.bold, color: Colors.black, backgroundColor: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/side_dishes.jpg'),
                            radius: 40
                        ),
                        Text("Side Dishes",
                          style: const TextStyle(
                              fontSize: 15, fontWeight:FontWeight.bold, color: Colors.black, backgroundColor: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/crockpot.jpg'),
                            radius: 40
                        ),
                        Text("Crockpot",
                          style: const TextStyle(
                              fontSize: 15, fontWeight:FontWeight.bold, color: Colors.black, backgroundColor: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("BY DESSERT",
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  )
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  //children: [
                   // Stack(
                     // alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/icecream.jpg'),
                            radius: 40
                        ),
                        Text("Ice Cream",
                          style: const TextStyle(
                              fontSize: 15, fontWeight:FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    //),
                  //],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 // children: [
                   // Stack(
                     // alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/brownies.jpg'),
                            radius: 40
                        ),
                        Text("Brownies",
                          style: const TextStyle(
                              fontSize: 15, fontWeight:FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    //),
                  //],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                //  children: [
                  //  Stack(
                    //  alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/pies.jpg'),
                            radius: 40
                        ),
                        Text("Pies",
                          style: const TextStyle(
                              fontSize: 15, fontWeight:FontWeight.bold, color: Colors.black),
                        ),
                      ],
                   // ),
                  //],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 // children: [
                   // Stack(
                     // alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        CircleAvatar(
                            backgroundImage: AssetImage('images/cookies.jpg'),
                            radius: 40
                        ),
                        Text("Cookies",
                          style: const TextStyle(
                              fontSize: 15, fontWeight:FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    //),
                 // ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
