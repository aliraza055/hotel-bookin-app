import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

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
  Map<String, dynamic> toMap() {
    return {
      "title": title,
      'isActive': isActive,
      "image": image,
      "rating": rating,
      "date": date,
      "price": price,
      "vendor": vendor,
      "address": adress,
      "vendorProfile": vendorProfile,
      "review": review,
      "bedAndBath": bedAndBathroom,
      "yearOfAutsin": yearOfHostin,
      "latitue": latitude,
      "longitude": longitude,
      "imageUrls": imageUrls,
    };
  }

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
      Items(
        title: "Luxury apartment with city view",
        isActive: true,
        image:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1760720877/images_2_vjfkkk.jpg",
        rating: 4.8,
        date: 'oct-12-2025',
        price: '5500',
        vendor: "Hamza",
        adress: "Karachi, Pakistan",
        vendorProfile: "vendorProfile",
        review: "892",
        bedAndBathroom: "2 beds, 2 bathrooms",
        yearOfHostin: '4',
        latitude: 24.8607,
        longitude: 67.0011,
        imageUrls: [
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718445/pexels-naimbic-2029698_jxwm5c.jpg',
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718486/pexels-burst-545012_hg1hrg.jpg',
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718496/pexels-izzy-hardy-742982-1591047_o6yzyz.jpg',
        ],
      ),

      Items(
        title: "Peaceful hostel room near university",
        isActive: true,
        image:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1760720877/images_2_vjfkkk.jpg",
        rating: 4.2,
        date: 'oct-09-2025',
        price: '1200',
        vendor: "Ali",
        adress: "Islamabad, Pakistan",
        vendorProfile: "vendorProfile",
        review: "315",
        bedAndBathroom: "1 bed, shared bathroom",
        yearOfHostin: '2',
        latitude: 33.6844,
        longitude: 73.0479,
        imageUrls: [
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718496/pexels-medhat-ayad-122846-439227_p4onj1.jpg',
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718499/pexels-pixabay-271618_s2wlmc.jpg',
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718504/pexels-pixabay-271624_nzpflp.jpg',
        ],
      ),

      Items(
        title: "Beachside resort with private pool",
        isActive: true,
        image:
            "https://res.cloudinary.com/dhob4di7g/image/upload/v1760720877/images_2_vjfkkk.jpg",
        rating: 4.9,
        date: 'oct-10-2025',
        price: '9500',
        vendor: "Hassan",
        adress: "Gwadar, Pakistan",
        vendorProfile: "vendorProfile",
        review: "1275",
        bedAndBathroom: "3 beds, 2 bathrooms, pool",
        yearOfHostin: '6',
        latitude: 25.1264,
        longitude: 62.3220,
        imageUrls: [
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718502/pexels-pixabay-279746_kweakl.jpg',
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718513/pexels-itsterrymag-2631746_denezj.jpg',
          'https://res.cloudinary.com/dhob4di7g/image/upload/v1760718515/pexels-pixabay-271619_f3p9fj.jpg',
        ],
      ),
    ];
  }
}

class SendItemsData {
  Future<void> sendItemData() async {
    final items = Items.itemsData();
    for (var item in items) {
      String id = randomAlphaNumeric(10);
      await FirebaseFirestore.instance
          .collection("ItemsData")
          .doc(id)
          .set(item.toMap());
    }
  }
}
