import 'package:eugenio_mobprog/constants.dart';
import 'package:eugenio_mobprog/widgets/custom_button.dart';
import 'package:eugenio_mobprog/widgets/custom_font.dart';
import 'package:eugenio_mobprog/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      image: const DecorationImage(
                        image: NetworkImage(''),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: ScreenUtil().setWidth(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/icons/icon_2.jpg',
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[300],
                            child: const Icon(
                              Icons.camera_alt,
                              size: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(55)),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFont(
                      text: 'Gabriel Josh Eugenio',
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(20),
                      color: Colors.black,
                    ),
                    SizedBox(height: ScreenUtil().setHeight(5)),
                    Row(
                      children: [
                        CustomFont(
                          text: '69',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomFont(
                          text: 'Followers',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        Icon(
                          Icons.circle,
                          size: ScreenUtil().setSp(5),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        CustomFont(
                          text: '67',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomFont(
                          text: 'Followering',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Row(
                      children: [
                        CustomButton(buttonName: 'Follow', onPressed: () {}),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomButton(
                          buttonName: 'Message',
                          buttonType: 'outlined',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              TabBar(
                indicatorColor: FB_DARK_PRIMARY,
                tabs: [
                  Tab(
                    child: CustomFont(
                      text: 'Posts',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'About',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'Photos',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(400),
                child: TabBarView(
                  children: [
                    ListView(
                      children: const [
                        PostCard(
                          userName: 'Gabriel Josh Eugenio',
                          postContent: 'Kamusta',
                          numOfLikes: 100,
                          date: 'October 11',
                          avatarImage: 'assets/icons/icon_1.jpg',
                        ),
                        PostCard(
                          userName: 'Gabriel Josh Eugenio',
                          postContent:
                              'Kicking off the holiday season with ICpEP-NCR!',
                          numOfLikes: 200,
                          hasImage: true,
                          date: 'December 2',
                          avatarImage: 'assets/icons/icon_2.jpg',
                          imagePath: 'assets/images/owl.jpg',
                        ),
                      ],
                    ),
                    // About Tab
                    SingleChildScrollView(
                      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildAboutSection('Work', 'Software Developer'),
                          _buildAboutSection(
                            'Education',
                            'Bachelor of Science in Information Technology',
                          ),
                          _buildAboutSection('Location', 'Manila, Philippines'),
                          _buildAboutSection('Hometown', 'Taguig City'),
                          _buildAboutSection(
                            'Relationship Status',
                            'In a Relationship',
                          ),
                          _buildAboutSection(
                            'Contact',
                            'eugeniogp@students.national-u.edu.ph',
                          ),
                        ],
                      ),
                    ),
                    GridView.builder(
                      padding: EdgeInsets.all(ScreenUtil().setSp(10)),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: ScreenUtil().setSp(10),
                        mainAxisSpacing: ScreenUtil().setSp(10),
                      ),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              ScreenUtil().setSp(8),
                            ),
                            color: Colors.grey[300],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/owl.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAboutSection(String title, String content) {
    return Padding(
      padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFont(
            text: title,
            fontSize: ScreenUtil().setSp(14),
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: ScreenUtil().setHeight(5)),
          CustomFont(
            text: content,
            fontSize: ScreenUtil().setSp(15),
            color: Colors.black,
          ),
          SizedBox(height: ScreenUtil().setHeight(10)),
          Container(height: 1, color: Colors.grey[300]),
        ],
      ),
    );
  }
}
