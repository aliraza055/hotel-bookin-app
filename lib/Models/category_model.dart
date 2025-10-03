class CategoryModel {
  String name;
  String images;
  CategoryModel({required this.name, required this.images});
  Map<String, dynamic> toMap() {
    return {'name': name, 'images': images};
  }

  static List getRoomData() {
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
