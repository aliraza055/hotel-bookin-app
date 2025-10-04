import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:random_string/random_string.dart';

class CategoryModel {
  String name;
  String images;
  CategoryModel({required this.name, required this.images});
  Map<String, dynamic> toMap() {
    return {'name': name, 'images': images};
  }

  static List<CategoryModel> categoryData() {
    return [
      CategoryModel(
        name: 'Room',
        images:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1755888020/bed_1_lhlmn9.png",
      ),
      CategoryModel(
        name: 'Hotel',
        images:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1755949318/hotel_h1dcex.png",
      ),
      CategoryModel(
        name: 'Resort',
        images:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1755949319/resort_dxumfn.png",
      ),
      CategoryModel(
        name: 'Hostel',
        images:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1755949317/bunk-bed_w3u4o6.png",
      ),
      CategoryModel(
        name: 'Apartment',
        images:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1755949317/apartment_-_Copy_-_Copy_xpuxk5.png",
      ),
    ];
  }
}

class SendData {
  Future<void> sendData() async {
    final categories = CategoryModel.categoryData();
    for (var category in categories) {
      String id = randomAlphaNumeric(10);
      await FirebaseFirestore.instance
          .collection('catagories')
          .doc(id)
          .set(category.toMap());
    }
  }
}
