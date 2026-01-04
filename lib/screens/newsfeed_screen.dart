import 'package:flutter/material.dart';
import '../widgets/post_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PostCard(
          userName: 'Gabriel Josh Eugenio',
          postContent: 'Kamusta',
          numOfLikes: 100,
          date: 'October 11',
          avatarImage: 'assets/icons/icon_2.jpg',
        ),
        PostCard(
          userName: 'Gabriel Josh Eugenio',
          postContent: 'Kicking off the holiday season with ICpEP-NCR!',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 2',
          avatarImage: 'assets/icons/icon_2.jpg',
          imagePath: 'assets/images/owl.jpg',
        ),
        PostCard(
          userName: 'Ganyu',
          postContent: "Time to begin work?",
          numOfLikes: 2021,
          hasImage: true,
          date: 'December 2',
          avatarImage: 'assets/icons/Ganyu_Icon.jpg',
          imagePath: 'assets/images/Ganyu_Birthday_2021.jpg',
        ),
        PostCard(
          userName: 'Flins',
          postContent: "Allow me to guide the way.",
          numOfLikes: 1031,
          hasImage: true,
          date: 'October 31',
          avatarImage: 'assets/icons/Flins_Icon.jpg',
          imagePath: 'assets/images/Flins_Birthday_2025.jpg',
        ),
        PostCard(
          userName: 'Citlali',
          postContent: "I'm never late...",
          numOfLikes: 987,
          hasImage: true,
          date: 'January 20',
          avatarImage: 'assets/icons/Citlali_Icon.jpg',
          imagePath: 'assets/images/Citlali_Birthday_2025.jpg',
        ),
      ],
    );
  }
}
