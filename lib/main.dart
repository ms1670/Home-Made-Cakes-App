
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
            SubHeading(SubHeadingText: "Sort Your Favourite",),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...cakeTypeList.map((name) => CakeTypeCard(typeName: name.typeName)),
                ],

              ),
            ),
            SizedBox(height: 8),
            SubHeading(SubHeadingText: "Categories",),
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
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  childAspectRatio: 0.65,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(), // Allow scrolling
                  children: exploreCakesList.map((cake) => AllProducts(
                  imagePath: cake.imagePath,
                    CakeName: cake.cakeName,
                    CakePrice: cake.cakePrice,
                    CakeMRPPrice: cake.cakeMRPPrice,
                  )).toList(),
                )

                // GridView.count(
                //   crossAxisCount: 2,
                //   shrinkWrap: true,
                //   physics: NeverScrollableScrollPhysics(),
                //   mainAxisSpacing: 4,
                //   crossAxisSpacing: 4,
                //   childAspectRatio: 0.65,
                //   children: [
                //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Chocolate', CakePrice: '₹299', CakeMRPPrice: '₹349',),
                //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Vanilla', CakePrice: '₹199', CakeMRPPrice: '₹349',),
                //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Strawberry', CakePrice: '₹249', CakeMRPPrice: '₹349',),
                //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Black Forest', CakePrice: '₹349', CakeMRPPrice: '₹449',),
                //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Black Forest', CakePrice: '₹349', CakeMRPPrice: '₹449',),
                //   ],
                // ),
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

class CakeTypeCard extends StatelessWidget{
  const CakeTypeCard({super.key, required this.typeName});
  final String typeName;

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
              child: Text(typeName),
            ),
          ],
        ),
      ),
    );
  }
}

class CakeType {
  final String typeName;

  CakeType({
    required this.typeName
  });
}

final List<CakeType> cakeTypeList = [
  CakeType(typeName: "Kids"), //0
  CakeType(typeName: "Chocolate"), //1
  CakeType(typeName: "Vanilla"), //2
  CakeType(typeName: "Pinata"), //3
  CakeType(typeName: "Forest"), //4
  CakeType(typeName: "Strawberry"), //5
  CakeType(typeName: "Cup Cakes"), //6
];

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
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    CakeName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    overflow: TextOverflow.ellipsis,
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

class ExploreCakes {
  final String imagePath;
  final String cakeName;
  final String cakePrice;
  final String cakeMRPPrice;
  final List<CakeType> tags;

  ExploreCakes({
    required this.imagePath,
    required this.cakeName,
    required this.cakePrice,
    required this.cakeMRPPrice,
    required this.tags,
  });
}

final List<ExploreCakes> exploreCakesList = [
  ExploreCakes(
    //imagePath: 'assets/pineapple_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Pineapple Cake',
    cakePrice: '₹299',
    cakeMRPPrice: '₹329',
    tags: [],
  ),
  ExploreCakes(
    // imagePath: 'assets/butter_scotch_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Butter Scotch Cake',
    cakePrice: '₹319',
    cakeMRPPrice: '₹349',
    tags: [cakeTypeList[0]],
  ),
  ExploreCakes(
    //imagePath: 'assets/black_forest_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Black Forest Cake',
    cakePrice: '₹349',
    cakeMRPPrice: '₹379',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/mango_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Mango Cake',
    cakePrice: '₹329',
    cakeMRPPrice: '₹359',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/strawberry_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Strawberry Cake',
    cakePrice: '₹319',
    cakeMRPPrice: '₹349',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/choco_vanilla.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Choco Vanilla Cake',
    cakePrice: '₹309',
    cakeMRPPrice: '₹339',
    tags: [cakeTypeList[0], cakeTypeList[1]],
  ),
  ExploreCakes(
    //imagePath: 'assets/chocolate_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Chocolate Cake',
    cakePrice: '₹349',
    cakeMRPPrice: '₹389',
    tags: [cakeTypeList[0], cakeTypeList[1]],
  ),
  ExploreCakes(
    //imagePath: 'assets/red_velvet.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Red Velvet Cake',
    cakePrice: '₹499',
    cakeMRPPrice: '₹549',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/blueberry_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Blueberry Cake',
    cakePrice: '₹529',
    cakeMRPPrice: '₹569',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/fruit_fresh_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Fruit Fresh Cake',
    cakePrice: '₹489',
    cakeMRPPrice: '₹519',
    tags: [],
  ),
  ExploreCakes(
    imagePath: 'assets/white_forest_cake.jpg',
    //imagePath: 'assets/pink_cake.jpg',
    cakeName: 'White Forest Cake',
    cakePrice: '₹459',
    cakeMRPPrice: '₹499',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/coffee_toffee.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Coffee Toffee Cake',
    cakePrice: '₹519',
    cakeMRPPrice: '₹549',
    tags: [],
  ),
  ExploreCakes(
   //imagePath: 'assets/choco_truffle.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Chocolate Truffle',
    cakePrice: '₹549',
    cakeMRPPrice: '₹579',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/german_forest.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'German Forest Cake',
    cakePrice: '₹539',
    cakeMRPPrice: '₹579',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/rasmalai_desi.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Rasmalai Desi Cake',
    cakePrice: '₹599',
    cakeMRPPrice: '₹649',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/choco_overloaded.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Chocolate Overloaded',
    cakePrice: '₹600',
    cakeMRPPrice: '₹649',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/gulab_jamun.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Gulab Jamun Cake',
    cakePrice: '₹579',
    cakeMRPPrice: '₹619',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/kitkat_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'KitKat Cake',
    cakePrice: '₹549',
    cakeMRPPrice: '₹579',
    tags: [cakeTypeList[0]],
  ),
  ExploreCakes(
    //imagePath: 'assets/oreo_chocolate.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Oreo Chocolate Cake',
    cakePrice: '₹559',
    cakeMRPPrice: '₹589',
    tags: [cakeTypeList[0]],
  ),


];

List<ExploreCakes> filterCakesByCategory(String selectedTypeName) {
  return exploreCakesList
      .where((cake) => cake.tags.contains(selectedTypeName))
      .toList();
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

    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      body: SingleChildScrollView(
        child: Padding (padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileDetailsCard(ProImg: 'assets/pink_cake.jpg',),
                  SizedBox(height: 8,),
                  ProReviewCard(),
        ],
      ),
        ),
      ),
    );
        // return SizedBox.expand( // ✅ fills full screen
    // child:  Container(
    //   //alignment: Alignment(0, 0),
    //     decoration: BoxDecoration(
    //       color: Colors.amber.shade100, // Example background color
    //     ),
    //     child: Column(
    //
    //         ),
    // );
  }
}

class ProfileDetailsCard extends StatelessWidget{
  const ProfileDetailsCard({super.key, required this.ProImg});
  final String ProImg;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      color: Colors.deepOrange.shade50,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: MediaQuery.of(context).size.width, // MediaQuery.of(context).size.width * 0.9
        height: 150,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      ProImg,
                      width: 120,
                      height: 120,
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //
                  //   ],
                  // ),
                  SizedBox(width: 16),

                  // 📄 Right Column (Details)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center, // center vertically
                      children: [
                        Text(
                          "User Name",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "user@example.com",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Joined: Jan 2024",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProReviewCard extends StatelessWidget{
  const ProReviewCard({super.key});

  @override
  Widget build(BuildContext context){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      color: Colors.green.shade100,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 320,
        child: Padding(
          padding: EdgeInsets.all(12),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Your Reviews",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  ),
                  Spacer(),
                  //IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right_alt))
                  Padding(
                    padding: EdgeInsets.only(right: 8), //  Shift arrow left from edge
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AllReviewsPage(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_right_alt),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 0, // Space around the line
                thickness: 1, // Line thickness
                color: Colors.black54, // Line color
                indent: 0, // Indent from the left
                endIndent: 0, // Indent from the right
              ),

              SizedBox(height: 4),
              Expanded( // ✅ allows scrollable space inside fixed height
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SampleProfileReviews(UserReview: 'Very Good Very Good Very Good Very Good Very Good Very Good Very Good Very Good Very GoodVery Good  Very Good Very Good Very Good', BrandName: 'Brand1', BrandLogo: 'assets/pink_cake.jpg',),
                       SizedBox(height: 4),
                       SampleProfileReviews(UserReview: 'Not Bad Not Bad Not Bad ', BrandName: 'Brand2', BrandLogo: 'assets/pink_cake.jpg',),
                       SizedBox(height: 4),
                      SampleProfileReviews(UserReview: 'Very Good Very Good Very Good Very Good Very Good Very Good Very Good Very Good Very GoodVery Good  Very Good Very Good Very Good', BrandName: 'Brand1', BrandLogo: 'assets/pink_cake.jpg',),
                      SizedBox(height: 4),
                      SampleProfileReviews(UserReview: 'Not Bad Not Bad Not Bad ', BrandName: 'Brand2', BrandLogo: 'assets/pink_cake.jpg',),
                      SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AllReviewsPage extends StatelessWidget {
  const AllReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Reviews'),
        backgroundColor: Colors.green.shade100,
        leading: BackButton(), // ← shows back arrow
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          SampleProfileReviews(
            UserReview: 'Very Good Very Good Very Good Very Good',
            BrandName: 'Brand1',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SizedBox(height: 8),
          SampleProfileReviews(
            UserReview: 'Not Bad Not Bad Not Bad',
            BrandName: 'Brand2',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SampleProfileReviews(
            UserReview: 'Very Good Very Good Very Good Very Good',
            BrandName: 'Brand1',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SizedBox(height: 8),
          SampleProfileReviews(
            UserReview: 'Not Bad Not Bad Not Bad',
            BrandName: 'Brand2',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SampleProfileReviews(
            UserReview: 'Very Good Very Good Very Good Very Good',
            BrandName: 'Brand1',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SizedBox(height: 8),
          SampleProfileReviews(
            UserReview: 'Not Bad Not Bad Not Bad',
            BrandName: 'Brand2',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SampleProfileReviews(
            UserReview: 'Very Good Very Good Very Good Very Good',
            BrandName: 'Brand1',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SizedBox(height: 8),
          SampleProfileReviews(
            UserReview: 'Not Bad Not Bad Not Bad',
            BrandName: 'Brand2',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SampleProfileReviews(
            UserReview: 'Very Good Very Good Very Good Very Good',
            BrandName: 'Brand1',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SizedBox(height: 8),
          SampleProfileReviews(
            UserReview: 'Not Bad Not Bad Not Bad',
            BrandName: 'Brand2',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SampleProfileReviews(
            UserReview: 'Very Good Very Good Very Good Very Good',
            BrandName: 'Brand1',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          SizedBox(height: 8),
          SampleProfileReviews(
            UserReview: 'Not Bad Not Bad Not Bad',
            BrandName: 'Brand2',
            BrandLogo: 'assets/pink_cake.jpg',
          ),
          // Add more reviews as needed
        ],
      ),
    );
  }
}

class SampleProfileReviews extends StatelessWidget{
  const SampleProfileReviews({super.key, required this.UserReview, required this.BrandName, required this.BrandLogo});
  final String UserReview;
  final String BrandName;
  final String BrandLogo;

  @override
  Widget build(BuildContext context){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2,
      color: Colors.white,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.86,
        height: 100,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      BrandLogo,
                      width: 75,
                      height: 75,
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              BrandName,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: List.generate(
                                5,
                                    (index) => Icon(Icons.star_border, size: 20),
                              ),
                            ),

                              // Row(
                            //   mainAxisAlignment: MainAxisAlignment.start,
                            //   children: [
                            //     IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                            //     IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                            //     IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                            //     IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                            //     IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                            //   ],
                            // ),
                          ],
                        ),
                        SizedBox(height: 4,),
                        Text(
                          UserReview,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),




        // Row(
        //   children: [
        //     SampleProfileReviews(),
        //   ],
        // ),
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
