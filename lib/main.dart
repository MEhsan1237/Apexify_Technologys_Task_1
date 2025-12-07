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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.deepPurple.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.white),
              ),
            ],
            pinned: true,
            floating: false,
            backgroundColor: Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "SliverAppBar",

                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 10,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "assets/images/me_dp.one.jpg",
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Muhammad Ehsan",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(Icons.person, color: Colors.deepPurple),
                    ),
                    ListTile(
                      title: Text(
                        "mehsan1237@gmail.com",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: Icon(Icons.email, color: Colors.deepPurple),
                    ),
                    Container(
                      height: size.height * .44,
                      width: size.width * .44,

                      decoration: BoxDecoration(
                        color: Colors.yellow.shade400,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          " Hi, I'm Muhammad Ehsan a\npassionate Flutter Developer\nI build fast, scalable, and cross\n-platform mobile applications\nusing Flutter & Dart I enjoy\ncrafting clean UI smooth UX\nand production-ready solutions\npowered by modern\ntechnologies.",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * .02),
                    Text(
                      "What I Can Do",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          " ➜ Flutter App Development (iOS + Android)",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          " ➜ Firebase Integration (Auth, Firestore, Storage)",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          " ➜ REST API Development & Integration",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          " ➜ State Management (Provider, GetX)",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          " ➜ C++ Programming & Problem Solving",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          " ➜ Animations like tween, lottie and rive",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          " ➜ Local database like Hive",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          " ➜ Payment Integrations like stripe",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          " ➜ Google Maps Integrations",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
