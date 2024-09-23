import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:satim_hack/core/Theme/AppColor.dart';
import 'package:satim_hack/core/helper/Assets.dart';
import 'package:satim_hack/core/helper/CustomBox.dart';
import 'package:satim_hack/features/home/presentation/view/Widget/CustomCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              Assets.logo,
              height: 23,
              width: 129,
            )
          ],
        ),
        elevation: 4,
        actions:  [
        
           IconButton(onPressed: (){
            Navigator.pushNamed(context, ('/notify'));
           }, icon:  const HugeIcon(
            icon:HugeIcons.strokeRoundedNotification01,
            color: Colors.black,
            size: 30.0,
          ),),
          horizontal(15),
            const HugeIcon(
            icon: HugeIcons.strokeRoundedMenu01,
            color: Colors.black,
            size: 30.0,
          ),
        ],
      ),
      body: const CustomCard(),
      floatingActionButton: FloatingActionButton(onPressed:(){} ,
      backgroundColor: AppColor.satim,
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
        ),
      child: const Icon(Icons.add,color: AppColor.white,size: 30,),
      ),
    );
  }
}
