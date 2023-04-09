// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:get/get.dart';

// Reference get firebaseStorage => FirebaseStorage.instance.ref();
// class FirebaseStorageService extends GetxService{
// Future<String?> getImage(String? imgName)async {
//   if(imgName == null){
//     return null;
//   }
//   try{
// var urlRef = firebaseStorage.child("excercises_images").child('${imgName.toLowerCase()}.jpg');
// var imgUrl= await urlRef.getDownloadURL();
// return imgUrl;
//   }catch(e){
//     return null;
//   }
// }
// }