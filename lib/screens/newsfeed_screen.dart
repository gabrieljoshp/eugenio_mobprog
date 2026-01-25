import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostCard(
          userName: 'Gabriel Josh Eugenio',
          postContent: 'Kamusta',
          numOfLikes: 2000,
          date: 'October 11',
          profileImageUrl:
              'https://scontent.fmnl13-2.fna.fbcdn.net/v/t39.30808-6/406526794_7259777220712504_6101170190107026818_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFD_niNN58K1JGJo4g7_UDECrOkklt8aEQKs6SSW3xoRLrPmjRye9OkRWXVWTr5qFl5fSVzwOy86nlTYngx6GUr&_nc_ohc=Pn9xhw9o7hQQ7kNvwFZxGgH&_nc_oc=AdmOXfmXF_sPxDZWUxZGTEIDpuFBOV8HSInIS-KiEG_9IgY0NiBog8NPzeKuxIKCPNI&_nc_zt=23&_nc_ht=scontent.fmnl13-2.fna&_nc_gid=wt12lHyTuLD-H-PMJ0uOpg&oh=00_Afq8V4QdMYX-0UMTbS4Lycu01QhzbbrPoHD76tKL0v4Vog&oe=697C6FC7',
          imageUrl:
              'https://inaturalist-open-data.s3.amazonaws.com/photos/1307188/large.jpg',
        ),
        CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: false,
            height: 300.h,
            padEnds: false,
          ),
          items: carouselItems(),
        ),
        PostCard(
          userName: 'Gabriel Josh Eugenio',
          postContent: 'Kicking off the holiday season with ICpEP-NCR!',
          numOfLikes: 200,
          date: 'December 2',
          profileImageUrl:
              'https://scontent.fmnl13-2.fna.fbcdn.net/v/t39.30808-6/406526794_7259777220712504_6101170190107026818_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFD_niNN58K1JGJo4g7_UDECrOkklt8aEQKs6SSW3xoRLrPmjRye9OkRWXVWTr5qFl5fSVzwOy86nlTYngx6GUr&_nc_ohc=Pn9xhw9o7hQQ7kNvwFZxGgH&_nc_oc=AdmOXfmXF_sPxDZWUxZGTEIDpuFBOV8HSInIS-KiEG_9IgY0NiBog8NPzeKuxIKCPNI&_nc_zt=23&_nc_ht=scontent.fmnl13-2.fna&_nc_gid=wt12lHyTuLD-H-PMJ0uOpg&oh=00_Afq8V4QdMYX-0UMTbS4Lycu01QhzbbrPoHD76tKL0v4Vog&oe=697C6FC7',
        ),
        PostCard(
          userName: 'Cyrus Robles',
          postContent: 'Kamusta!',
          date: 'December 2',
        ),
        CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: false,
            height: 300.h,
            padEnds: false,
          ),
          items: carouselItems(),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }

  List<Widget> carouselItems() {
    return [
      PostCard(
        userName: 'Genshin Impact',
        imageUrl:
            'https://img.game8.co/3865783/f5108df00d599abe80ad3c24bcc9f814.png/show',
        profileImageUrl:
            'https://static.wikia.nocookie.net/gensin-impact/images/8/80/Genshin_Impact.png/revision/latest?cb=20240331104358',
        postContent: 'Step into the world of Teyvat!',
        date: 'September 28',
        adsMarket: 'Join now',
      ),
      PostCard(
        userName: 'War Thunder',
        imageUrl:
            'https://staticfiles.warthunder.com/upload/image/0_2024/10_October/Birthday/news_wt_12_years_logo_fc8c67abe6b905ba1374e909e0ead8e3.jpg',
        profileImageUrl: 'https://img.icons8.com/color/1200/war-thunder.jpg',
        postContent: 'Celebrate 12 Years of War Thunder!',
        date: 'November 1',
        adsMarket: 'Play for free',
      ),
      PostCard(
        userName: 'Valorant',
        imageUrl:
            'https://static.wikia.nocookie.net/valorant/images/3/3a/Closed_Beta_Promo.jpg/revision/latest?cb=20200409115659',
        profileImageUrl:
            'https://wp.logos-download.com/wp-content/uploads/2021/01/Valorant_Logo.png?dl',
        postContent: 'Tactical 5v5 Shooter',
        date: 'June 2',
        adsMarket: 'Play for free',
      ),
      PostCard(
        userName: 'Rainbow Six Siege',
        imageUrl:
            'https://static.wikia.nocookie.net/rainbowsix/images/6/69/651.jpg/revision/latest?cb=20191115144313',
        profileImageUrl:
            'https://preview.redd.it/imo-the-new-r6-logo-is-a-downgrade-v0-ozqkd0u34kje1.jpg?width=400&format=pjpg&auto=webp&s=d3462d9635c04c3d5cc4707cd71fa7e6574a47be',
        postContent: 'Tactical, 5v5 FPS',
        date: 'December 1',
        adsMarket: 'Join now',
      ),
      PostCard(
        userName: 'Umamusume: Pretty Derby',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/en/3/31/Umamusume_Pretty_Derby_game_cover.jpg',
        profileImageUrl:
            'https://play-lh.googleusercontent.com/yN6cCSP7UB_2bsvlCxrtv-FUpEt1IvEFwr0Ucb3wr39QsAd5PLsueSVXuCinDbE4rifhMlX4YNtpLpkGnpsLhCQ=w240-h480-rw',
        postContent: 'Anime and Horse Racing Combined!',
        date: 'June 28',
        adsMarket: 'Play now',
      ),
    ];
  }
}
