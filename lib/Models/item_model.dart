class Items {
  final String title;
  bool isActive;
  final String image;
  final double rating;
  final String date;
  final String price;
  final String vendor;
  final String adress;
  final String vendorProfile;
  final String review;
  final String bedAndBathroom;
  final String yearOfHostin;
  final double latitude;
  final double longitude;
  final List<String> imageUrls;
  Items({
    required this.title,
    required this.isActive,
    required this.image,
    required this.rating,
    required this.date,
    required this.price,
    required this.vendor,
    required this.adress,
    required this.vendorProfile,
    required this.review,
    required this.bedAndBathroom,
    required this.yearOfHostin,
    required this.latitude,
    required this.longitude,
    required this.imageUrls,
  });
  static List<Items> itemsData() {
    return [
      Items(
        title: "Nice a bedroom in small nice hosue",
        isActive: false,
        image:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1760720877/images_2_vjfkkk.jpg",
        rating: 4.25,
        date: 'oct-11-2025',
        price: '2000',
        vendor: "Saoud",
        adress: "Lahore, Pakistan",
        vendorProfile: "vendorProfile",
        review: "426",
        bedAndBathroom: "1 bed, shared bathroom",
        yearOfHostin: '10',
        latitude: 45.0878,
        longitude: 4.8585,
        imageUrls: [
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718520/pexels-jvdm-1454806_1_tm0a3d.jpg',
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718519/pexels-pixabay-164595_ibv6uh.jpg',
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718518/pexels-jvdm-2416932_am3r59.jpg',
        ],
      ),
    ];
  }
}
