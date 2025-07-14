
import 'package:flutter/material.dart';

void main(){
   runApp(CakeApp());
}

class CakeApp extends StatelessWidget {
  const CakeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Homemade Cakes",
      home: MainPage(),
      //Text("My First Flutter App"),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState () => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  int _currentIndex = 0;

  final List<Widget> _pages = [
      HomePage(),
      OrdersPage(),
      ProfilePage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Homemade Cakes"),
        backgroundColor: Colors.amberAccent,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex){
          setState(() {
            _currentIndex = newIndex;
          });
        },
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],

      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            SubHeading(SubHeadingText: "Categories",),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CakeCatCard(CatName: "Kids"),
                  CakeCatCard(CatName: "Cup Cake"),
                  CakeCatCard(CatName: "Chocolate"),
                  CakeCatCard(CatName: "Strawberry"),
                  CakeCatCard(CatName: "Vennila"),
                  CakeCatCard(CatName: "Starts"),
                  CakeCatCard(CatName: "Butter"),
                ],
              ),
            ),

            SizedBox(height: 8),
            SubHeading(SubHeadingText: "Popular Cakes"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CakeCardDesign(
                    CakeCardSize(CakeName: "Chocolate", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                  ),
                  SizedBox(width: 8),
                  CakeCardDesign(
                    CakeCardSize(CakeName: "Vanilla", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                  ),
                  SizedBox(width: 8),
                  CakeCardDesign(
                    CakeCardSize(CakeName: "Butter", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                  ),
                    SizedBox(width: 8),
                  CakeCardDesign(
                    CakeCardSize(CakeName: "Cup Cake", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                  ),
                  SizedBox(width: 8),
                  CakeCardDesign(
                    CakeCardSize(CakeName: "Choco-vanilla", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                  ),
                  SizedBox(width: 8),
                  CakeCardDesign(
                    CakeCardSize(CakeName: "Chocolate", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
            SizedBox(height: 8),
            SubHeading(SubHeadingText: "Explore More"),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  childAspectRatio: 0.65,
                  children: [
                    AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Chocolate', CakePrice: '₹299', CakeMRPPrice: '₹349',),
                    AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Vanilla', CakePrice: '₹199', CakeMRPPrice: '₹349',),
                    AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Strawberry', CakePrice: '₹249', CakeMRPPrice: '₹349',),
                    AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Black Forest', CakePrice: '₹349', CakeMRPPrice: '₹449',),
                    AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Black Forest', CakePrice: '₹349', CakeMRPPrice: '₹449',),
                  ],
                ),
              ],

            ),
          ],
        ),
      );
  }
}

class SubHeading extends StatelessWidget{
  const SubHeading({super.key, required this.SubHeadingText});
  final String SubHeadingText;

  @override
  Widget build(BuildContext context){
    return Text(
          SubHeadingText,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}

class CakeCardDesign extends StatelessWidget{
  final Widget child;
  const CakeCardDesign(this.child, {super.key});

  @override
  Widget build(BuildContext context){
    return Card(
        elevation: 4,
        color: Colors.pink.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        clipBehavior: Clip.antiAlias,
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: child,
        ),
    );
  }
}

class CakeCardSize extends StatelessWidget {
  const CakeCardSize({super.key, required this.CakeName, required this.CakePrice, required this.imagePath});
  final String CakeName;
  final String CakePrice;
  final String imagePath;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 120,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.cover, // Keeps image size uniform
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(CakeName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start
              ),
             // const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(CakePrice, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline_rounded))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CakeCatCard extends StatelessWidget{
  const CakeCatCard({super.key, required this.CatName});
  final String CatName;

  @override
  Widget build(BuildContext context){
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      elevation: 4,
      color: Colors.amber.shade200,
      child: SizedBox(
        width: 100,
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(CatName),
            ),
          ],
        ),
      ),
    );
  }
}

class AllProducts extends StatelessWidget{
  const AllProducts({super.key, required this.imagePath, required this.CakeName, required this.CakePrice, required this.CakeMRPPrice});
  final String imagePath;
  final String CakeName;
  final String CakePrice;
  final String CakeMRPPrice;

  @override
  Widget build(BuildContext context){
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        color: Colors.deepOrangeAccent.shade100,
        clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: 180,
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
            Padding(
                padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    CakeName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            CakePrice,
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                          ),
                          Text(
                            CakeMRPPrice,
                            style: TextStyle(fontWeight: FontWeight.normal, decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.amber,
                                decorationThickness: 4
                              //  color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline_rounded))
                    ],
                  ),
                ],

              ),
            ),
          ],
        ),
      ),
    );

  }
}

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("📦 Orders Page"));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("👤 Profile Page"));
  }
}

//
// class CakeCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       color: Colors.pink.shade50,
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Cake of the Day', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             Text('Try our special chocolate fudge cake!'),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SampleCardSize extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return SizedBox(
//       width: 180,
//       height: 240,
//       child: Center(
//         child: Text("New Card"),
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(CakeApp());
//   // runApp(
//   //     MaterialApp(
//   //   title: "Cakes",
//   //   theme: ThemeData(
//   //     primarySwatch: Colors.blue,
//   //   ),
//   //   home: Text("My First Flutter App"),
//   // )
//   // ); // runApp
// }
//
// class CakeApp extends StatelessWidget {
//   const CakeApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Homemade Cakes",
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(title: "Homemade Cakes"),
//       //Text("My First Flutter App"),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key, required this.title});
//   final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         backgroundColor: Colors.amberAccent,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget> [
//             const Text(
//               "Home Page",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const Text("Welcome to Homemade Cakes",),
//
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Card( elevation: 4, child: SampleCardSize(),),
//                   SizedBox(width: 8), // space between cards
//                   Card( elevation: 4, child: SampleCardSize(),),
//                   SizedBox(width: 8), // space between cards
//                   Card( elevation: 4, child: SampleCardSize(),),
//                   SizedBox(width: 8), // space between cards
//                   Card( elevation: 4, child: SampleCardSize(),),
//                   SizedBox(width: 8), // space between cards
//                   Card( elevation: 4, child: SampleCardSize(),),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 12),
//             CakeCard(),
//             const SizedBox(height: 10),
//             SampleCardSize(),
//             const SizedBox(height: 16, width: 16),
//             SampleCardSize(),
//             const SizedBox(height: 16, width: 16),
//             SampleCardSize(),
//             const SizedBox(height: 16, width: 16),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class CakeCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       color: Colors.pink.shade50,
//       child: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Cake of the Day', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             Text('Try our special chocolate fudge cake!'),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SampleCardSize extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return SizedBox(
//       width: 180,
//       height: 240,
//       child: Center(
//         child: Text("New Card"),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

//
// import 'package:flutter/material.dart'; // Required Flutter package
//
// void main() {
//   runApp(MyApp()); // Entry point
// }
//
// // Root widget of the app
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Homemade Cakes',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       home: HomeScreen(), // Home screen of the app
//     );
//   }
// }
//
// // Home Screen widget
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Homemade Cakes'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Welcome to Our Cake Shop!',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               child: Text('View Cakes'),
//               onPressed: () {
//                 // Navigate to CakeListScreen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => CakeListScreen()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // Second screen showing list of cakes
// class CakeListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Our Cakes'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             leading: Icon(Icons.cake),
//             title: Text('Chocolate Cake'),
//             subtitle: Text('Rich & creamy'),
//           ),
//           ListTile(
//             leading: Icon(Icons.cake),
//             title: Text('Vanilla Cake'),
//             subtitle: Text('Classic and smooth'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
