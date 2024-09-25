import 'package:flutter/material.dart';
import 'package:satim_hack/core/Ui/CustomAppBar.dart';
import 'package:satim_hack/features/home/presentation/view/Widget/CustomCardREQ.dart';

class RequestsScreen extends StatefulWidget {
  const RequestsScreen({super.key});

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context,'My Screen Title'),
      body: const Column(
        children: [
          CustomCardREQ(NameWeb: 'Naviguih',Link: 'www.naviguih.com',status: 'Active',)
        ],
      ),
           
    );
  }
}
