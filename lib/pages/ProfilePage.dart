import 'package:flutter/material.dart';
import 'package:homemade_cakes_app/recourse/AppColors.dart';


// Profile Page
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //  backgroundColor: Colors.amber.shade50,
      backgroundColor: AppColors.back,
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
      color: AppColors.cardColor,
      // color: Colors.deepOrange.shade50,
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

                  // Right Column (Details)
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
      elevation: 2,
      // color: Colors.green.shade100,
      //color: AppColors.secondary,
      color: AppColors.cardBackground,
      shadowColor: AppColors.shadowColor,
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
                color: AppColors.dividerColor, // Line color
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
      color: AppColors.back,
      // color: AppColors.secondaryBackground,
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
