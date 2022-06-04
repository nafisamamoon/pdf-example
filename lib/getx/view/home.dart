import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myui/getx/controller/post-controller.dart';
class Home extends StatelessWidget {
  //const Home({ Key? key }) : super(key: key);
PostController controller=Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => ListView.builder(
        itemCount: controller.posts.length,
        itemBuilder: (context,i){
          return Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)
            ),
            child: ListTile(
              title: Text(controller.posts[i].title!),
              subtitle: Text(controller.posts[i].body!),
            ),
          );
        }
        ),)
    );
  }
}