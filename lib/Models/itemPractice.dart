class PraticeModel {
  String name;
  String img;
  PraticeModel({required this.name, required this.img});
  static List<PraticeModel> categoryData() {
    return [
      PraticeModel(
        name: "room",
        img:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1755888020/bed_1_lhlmn9.png",
      ),
      PraticeModel(
        name: "room2",
        img:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1755888020/bed_1_lhlmn9.png",
      ),
      PraticeModel(
        name: "room3",
        img:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1755888020/bed_1_lhlmn9.png",
      ),
      PraticeModel(
        name: 'room4',
        img:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1755888020/bed_1_lhlmn9.png",
      ),
    ];
  }
}
