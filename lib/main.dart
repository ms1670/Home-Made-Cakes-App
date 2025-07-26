
import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'recourse/AppColors.dart';
import 'pages/OrderPage.dart';
import 'pages/ProfilePage.dart';


void main(){
   runApp(CakeApp());
}
// F8F6DD
// 7D3800
// FCCD65
// A4530F

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
    // return Scaffold(
    //   backgroundColor: AppColors.background,
    //
    //     appBar: PreferredSize(
    //       preferredSize: Size.fromHeight(30), // ← This line sets AppBar height
    //       child:  AppBar(
    //     backgroundColor: AppColors.primary,
    //     elevation: 0,
    //     title: Row(
    //       children: [
    //         Icon(Icons.location_on, color: AppColors.background, size: 18),
    //         const SizedBox(width: 4),
    //         Column(
    //           children: [
    //             Text(
    //               "123 Main Street, City",
    //               style: TextStyle(
    //                 color: AppColors.background,
    //                 fontSize: 14,
    //               ),
    //             ),
    //             Text(
    //               "123 Main Street, City",
    //               style: TextStyle(
    //                 color: AppColors.background,
    //                 fontSize: 14,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ), // or leave it blank if not needed
    //     centerTitle: true,
    //     actions: [
    //       IconButton(
    //         icon: Icon(Icons.more_vert, color: AppColors.background),
    //         onPressed: () {},
    //       ),
    //     ],
    //    ),
    //     ),
    //
    //   body: Column(
    //     children: [
    //       // Location + Search Bar (above body)
    //       // Container(
    //       //   color: AppColors.primary,
    //       //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    //       //   child: Column(
    //       //     crossAxisAlignment: CrossAxisAlignment.start,
    //       //     children: [
    //       //       const SizedBox(height: 10),
    //       //       Container(
    //       //         height: 40,
    //       //         decoration: BoxDecoration(
    //       //           color: AppColors.secondary,
    //       //           borderRadius: BorderRadius.circular(10),
    //       //         ),
    //       //         child: TextField(
    //       //           style: TextStyle(color: Colors.black),
    //       //           decoration: InputDecoration(
    //       //             hintText: "Search cakes...",
    //       //             hintStyle: TextStyle(color: AppColors.textColorHover),
    //       //             prefixIcon: Icon(Icons.search, color: AppColors.textColorSec),
    //       //             border: InputBorder.none,
    //       //             isCollapsed: true,
    //       //             contentPadding: EdgeInsets.symmetric(vertical: 8),
    //       //           ),
    //       //         ),
    //       //       ),
    //       //     ],
    //       //   ),
    //       // ),
    //
    //       // Main Page Content (Expanded)
    //       Expanded(child: _pages[_currentIndex]),
    //     ],
    //   ),
    //
    //   bottomNavigationBar: BottomNavigationBar(
    //     currentIndex: _currentIndex,
    //     onTap: (int newIndex) {
    //       setState(() {
    //         _currentIndex = newIndex;
    //       });
    //     },
    //     backgroundColor: AppColors.secondary,
    //     selectedItemColor: AppColors.primary,
    //     unselectedItemColor: AppColors.primaryVariant,
    //     selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    //     showSelectedLabels: true,
    //     showUnselectedLabels: true,
    //     elevation: 8,
    //     iconSize: 28,
    //     type: BottomNavigationBarType.fixed,
    //     items: const [
    //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    //       BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Orders'),
    //       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    //     ],
    //   ),
    // );

    return Scaffold(
      // appBar: AppBar(
      //   // title: Text("Homemade Cakes"),
      //  // backgroundColor: Colors.amberAccent,
      //   backgroundColor: AppColors.hintColor,
      //   actions: [
      //     IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      //     IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      //   ],
      // ),
      // appBar: AppBar(
      //   backgroundColor: AppColors.primary, // Customize as needed
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Container(
      //     height: 40,
      //     decoration: BoxDecoration(
      //       color: AppColors.background,
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //     child: TextField(
      //       //textAlign: TextAlign.center, // Horizontally center text
      //       style: TextStyle(color: Colors.black),
      //       decoration: InputDecoration(
      //         hintText: "Search cakes...",
      //         hintStyle: TextStyle(color: AppColors.textColorHover),
      //         prefixIcon: Icon(Icons.search, color: AppColors.textColorSec),
      //         border: InputBorder.none,
      //         isCollapsed: true,
      //         contentPadding: EdgeInsets.symmetric(vertical: 8), //  Vertically center
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.more_vert, color: AppColors.background,),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),

      appBar: AppBar(
        backgroundColor: AppColors.primary,
       // foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 4,
        toolbarHeight: 80,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(24),
              bottomLeft: Radius.circular(24)),
        ),
        title: Padding(padding: const EdgeInsets.only(left: 12),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              // Row(
              //   children: [
              //     Icon(Icons.location_on, color: AppColors.background, size: 18),
              //     SizedBox(width: 4),
              //     Text(
              //       "123 Main Street, City",
              //       style: TextStyle(
              //         color: AppColors.background,
              //         fontSize: 14,
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 6),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.background1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Search cakes...",
                hintStyle: TextStyle(color: AppColors.textColorHover),
                prefixIcon: Icon(Icons.search, color: AppColors.textColorSec),
                border: InputBorder.none,
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(vertical: 8),
              ),
            ),
          ),
          ],
        ),
        ),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            icon: Icon(Icons.filter_list, color: AppColors.background, size: 32,),
            onPressed: () {},
          ),
          ),
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
        backgroundColor: AppColors.secondary,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.primaryVariant,
         selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        // unselectedLabelStyle: TextStyle(color: Colors.grey),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 8,
        iconSize: 28,
        type: BottomNavigationBarType.fixed, // or shifting

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
