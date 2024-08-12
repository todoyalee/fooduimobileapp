import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
//

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

/////////////////////////////////////
//@CodeWithFlexz on Instagram
//
//AmirBayat0 on Github
//Programming with Flexz on Youtube
/////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //drawer: mainDrawer(3),
        appBar: const MyAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              const TopTextWidget(),
              TabBar(),
              const MiddleSaladsPageView(),
              const BottomSaladGridView(),
            ],
          ),
        ),
      ),
    );
  }
}

/// Bottom Salad GridView Widget Components
class BottomSaladGridView extends StatelessWidget {
  const BottomSaladGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.all(10),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 10,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 700),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[700],
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 800),
                        child: Spin(
                          delay: const Duration(milliseconds: 800),
                          child: SizedBox(
                            child: Center(
                              child: Image.asset(
                                "images/3.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 900),
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              "salad",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.oxygen(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 155,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 1000),
                        child: Text(
                          "salad3",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.oxygen(
                              color: const Color.fromARGB(255, 135, 134, 134),
                              fontWeight: FontWeight.w300,
                              fontSize: 14),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 55,
                      top: 185,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 1100),
                        child: Text(
                          "wwhatever food it iss",
                          style: GoogleFonts.oxygen(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 7,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 1150),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                              onPressed: () {
                                Get.find<WalletController>().add(
                                  id: _foodController.salads[index].id,
                                  img: _foodController.salads[index].img,
                                  title: _foodController.salads[index].title,
                                  subtitle:
                                      _foodController.salads[index].subtitle,
                                  price: _foodController.salads[index].price,
                                );
                              },
                              icon: const Icon(
                                Icons.add,
                                color: unSelectedColor,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

/// Middle Salads PageView Widget Components
class MiddleSaladsPageView extends StatelessWidget {
  const MiddleSaladsPageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: PageView.builder(
            //
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(5),
                  child: Stack(children: [
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: FadeInLeft(
                        delay: const Duration(milliseconds: 350),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      left: 5,
                      child: FadeInLeft(
                        delay: const Duration(milliseconds: 400),
                        child: Spin(
                          delay: const Duration(milliseconds: 400),
                          child: SizedBox(
                            child: Hero(
                              tag: _foodController.salads[index].id,
                              child: Image.asset(
                                "assets/5.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 175,
                      top: 40,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 450),
                        child: Text(
                          "ippo",
                          style: GoogleFonts.oxygen(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 21),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 175,
                      top: 68,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 500),
                        child: Text(
                          "hardwork",
                          style: GoogleFonts.oxygen(
                              color: const Color.fromARGB(255, 135, 134, 134),
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 175,
                      top: 95,
                      child: FadeInUp(
                        delay: const Duration(milliseconds: 600),
                        child: Text(
                          "yoo",
                          style: GoogleFonts.oxygen(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 10,
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 650),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                              onPressed: () {
                                Get.find<WalletController>().add(
                                  id: _foodController.salads[index].id,
                                  img: _foodController.salads[index].img,
                                  title: _foodController.salads[index].title,
                                  subtitle:
                                      _foodController.salads[index].subtitle,
                                  price: _foodController.salads[index].price,
                                );
                              },
                              icon: const Icon(
                                Icons.add,
                                color: unSelectedColor,
                              )),
                        ),
                      ),
                    )
                  ]),
                ),
              );
            }));
  }
}

/// TabBar Widget Components
class TabBar extends StatelessWidget {
  TabBar({
    Key? key,
  }) : super(key: key);

  final List<String> tabNames = [
    "Salads",
    "Soups",
    "Grilled",
    "Fish",
  ];

  @override
  Widget build(BuildContext context) {
    var _controller = Get.find<TabBarController>();
    return FadeInUp(
      delay: const Duration(milliseconds: 300),
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 5),
        width: w,
        height: h / 15,
        child: Row(
          children: [
            SizedBox(
              width: w / 1.25,
              height: double.infinity,
              child: ListView.builder(
                  itemCount: 4,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Obx(() {
                      return GestureDetector(
                        onTap: () {
                          _controller.currentIndex.value = index;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: w / 4,
                          height: double.infinity,
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: _controller.currentIndex.value == index
                                ? Colors.black
                                : unSelectedColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                              child: Text(
                            tabNames[index],
                            style: GoogleFonts.oxygen(
                                color: _controller.currentIndex.value == index
                                    ? const Color.fromARGB(255, 234, 234, 234)
                                    : Colors.black,
                                fontSize: 16),
                          )),
                        ),
                      );
                    });
                  }),
            ),
            Expanded(
              child: RotatedBox(
                quarterTurns: -15,
                child: IconButton(
                  icon: const Icon(
                    LineIcons.horizontalSliders,
                    size: 40,
                  ),
                  onPressed: () {
                    Get.changeThemeMode(ThemeMode.dark);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Top Text Widget Components
class TopTextWidget extends StatelessWidget {
  const TopTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: const Duration(milliseconds: 200),
      child: SizedBox(
        width: w,
        height: h / 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delicious Salads",
              style: GoogleFonts.oxygen(
                fontSize: 35,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              " We made fresh and Healthy food",
              style: GoogleFonts.oxygen(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// MyAppBar Widget Components
class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 10, 2),
            child: GestureDetector(
              onTap: () {
                Get.find<NavigatorController>().changeNavBarIndex(2);              },
              child: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/main.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
