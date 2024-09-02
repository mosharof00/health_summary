import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_summary/global/app_text_style.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../global/increasing_text.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Iconsax.setting),
                ),
              ],
            ),
          ),
          Center(
            child: FractionallySizedBox(
              widthFactor: .6,
              child: Hero(
                tag: const Key("image"),
                child: Container(
                  height: 280,
                  width: 280,
                  decoration: ShapeDecoration(
                    shape: const StarBorder(
                      innerRadiusRatio: .9,
                      pointRounding: .2,
                      points: 10,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/model.jpg'),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.8),
                        blurRadius: 120,
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(.5),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Text(
            "Rakul Preet",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(122),
              color: Colors.deepPurple.shade50,
            ),
            child: const Text(
              "Advanced",
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IncreasingText(
                    23.51,
                    suffix: "M",
                    isSingle: false,
                    style: TextStyle(
                      color: Colors.deepPurple.shade500,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(color: Colors.deepPurple.shade500),
                  ),
                ],
              ),
              const SizedBox(width: 40),
              Column(
                children: [
                  IncreasingText(
                    467,
                    isSingle: true,
                    style: TextStyle(
                      color: Colors.deepPurple.shade500,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    "Following",
                    style: TextStyle(color: Colors.deepPurple.shade500),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Container(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(80),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 100,
                    ),
                  ],
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.optionTextList.length,
                    itemBuilder: (context, index) {
                      return CupertinoButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        child: ListTile(
                          leading: Icon(
                            controller.optionIconList[index],
                            size: 35,
                            color: Colors.deepPurple,
                          ),
                          title: AppTextStyle(
                              text: controller.optionTextList[index]),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
