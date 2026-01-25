import 'package:eugenio_mobprog/constants.dart';
import 'package:eugenio_mobprog/widgets/custom_button.dart';
import 'package:eugenio_mobprog/widgets/custom_font.dart';
import 'package:eugenio_mobprog/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileScreen extends StatefulWidget {
  final String username;

  const ProfileScreen({super.key, required this.username});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> _photos = [
    'assets/images/owl.jpg',
    'assets/images/owl2.jpg',
    'assets/images/owl3.jpg',
    'assets/images/owl4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    debugPrint('USERNAME RECEIVED: "${widget.username}"');
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
                    width: ScreenUtil().screenWidth,
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://base-prod.rspb-prod.magnolia-platform.com/.imaging/focalpoint/_WIDTH_x_HEIGHT_/dam/jcr:6b996ece-dc81-4bb7-88cd-1d0263d8b5d4/585246779-Species-Little-Owl-ADULT-Stood-on-fence-with-green-blurred-background.jpg',
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                color: FB_DARK_PRIMARY,
                                value: downloadProgress.progress,
                              ),
                      errorWidget: (context, url, error) =>
                          Icon(Icons.error, size: 100.sp),
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
                          backgroundImage: CachedNetworkImageProvider(
                            'https://scontent.fmnl13-2.fna.fbcdn.net/v/t39.30808-6/406526794_7259777220712504_6101170190107026818_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFD_niNN58K1JGJo4g7_UDECrOkklt8aEQKs6SSW3xoRLrPmjRye9OkRWXVWTr5qFl5fSVzwOy86nlTYngx6GUr&_nc_ohc=Pn9xhw9o7hQQ7kNvwFZxGgH&_nc_oc=AdmOXfmXF_sPxDZWUxZGTEIDpuFBOV8HSInIS-KiEG_9IgY0NiBog8NPzeKuxIKCPNI&_nc_zt=23&_nc_ht=scontent.fmnl13-2.fna&_nc_gid=wt12lHyTuLD-H-PMJ0uOpg&oh=00_Afq8V4QdMYX-0UMTbS4Lycu01QhzbbrPoHD76tKL0v4Vog&oe=697C6FC7',
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
                      text: widget.username,
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
                        PostCard(
                          userName: 'Gabriel Josh Eugenio',
                          postContent:
                              'Kicking off the holiday season with ICpEP-NCR!',
                          numOfLikes: 200,
                          date: 'December 2',
                          profileImageUrl:
                              'https://scontent.fmnl13-2.fna.fbcdn.net/v/t39.30808-6/406526794_7259777220712504_6101170190107026818_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFD_niNN58K1JGJo4g7_UDECrOkklt8aEQKs6SSW3xoRLrPmjRye9OkRWXVWTr5qFl5fSVzwOy86nlTYngx6GUr&_nc_ohc=Pn9xhw9o7hQQ7kNvwFZxGgH&_nc_oc=AdmOXfmXF_sPxDZWUxZGTEIDpuFBOV8HSInIS-KiEG_9IgY0NiBog8NPzeKuxIKCPNI&_nc_zt=23&_nc_ht=scontent.fmnl13-2.fna&_nc_gid=wt12lHyTuLD-H-PMJ0uOpg&oh=00_Afq8V4QdMYX-0UMTbS4Lycu01QhzbbrPoHD76tKL0v4Vog&oe=697C6FC7',
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
                    Padding(
                      padding: EdgeInsets.all(ScreenUtil().setSp(10)),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _photos.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              MediaQuery.of(context).size.width > 500 ? 3 : 2,
                          crossAxisSpacing: ScreenUtil().setSp(10),
                          mainAxisSpacing: ScreenUtil().setSp(10),
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (context, index) {
                          final img = _photos[index];
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(
                              ScreenUtil().setSp(8),
                            ),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => Dialog(
                                    child: InteractiveViewer(
                                      child: Image.asset(
                                        img,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(img, fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
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
