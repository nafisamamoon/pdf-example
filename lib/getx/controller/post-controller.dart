import 'package:get/get.dart';
//import 'package:get/state_manager.dart';
import 'package:myui/getx/controller/data-services.dart';
import 'package:myui/getx/model/post.dart';

class PostController extends GetxController{
  @override
 void onInit(){
getPost();
  }
  RxList<Post> posts=RxList<Post>();
  
  getPost()async{
    var response=await DataServices().getposts();
    if(response is List<Post>){
      posts.addAll(response);
    }
  }
}