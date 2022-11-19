class Desserts {
  Desserts({
    required this.id,
    required this.nama,
    required this.tipe,
    required this.shortdesc,
    required this.desc,
    required this.image,
    required this.rate,
    required this.price,
  });

  int id;
  String nama;
  String tipe;
  String shortdesc;
  String desc;
  String image;
  int rate;
  int price;

  factory Desserts.fromJson(Map<String, dynamic> json) => Desserts(
        id: json["id"],
        nama: json["nama"],
        tipe: json["tipe"],
        shortdesc: json["shortdesc"],
        desc: json["desc"],
        image: json["image"],
        rate: json["rate"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "tipe": tipe,
        "shortdesc": shortdesc,
        "desc": desc,
        "image": image,
        "rate": rate,
        "price": price,
      };
}

final desserts = <Desserts>[
  Desserts(
      id: 1,
      nama: "Cheesecake",
      tipe: 'Cake',
      shortdesc: "Kue keju khas Amerika",
      desc:
          "Jika kamu adalah pecinta keju, maka kamu wajib mencoba Cheesecake buatan pattisier kami!",
      image: "assets/image/cheese cake.jpg",
      rate: 5,
      price: 35000),
  Desserts(
      id: 2,
      nama: "Chocolate cake",
      tipe: 'Cake',
      shortdesc: "Kue cokelat dengan cokelat premium",
      desc:
          "Jika kamu adalah pecinta cokelat, kamu harus coba kue cokelat kami! Kami yakin 100% kamu pasti ke",
      image: "assets/image/chocolate cake.jpg",
      rate: 5,
      price: 35000),
  Desserts(
      id: 3,
      nama: "Pancake",
      tipe: 'Cake',
      shortdesc: "Kue dadar untuk sarapan",
      desc:
          "Jika kamu sedang ingin memakan cake, tetapi tidak ingin yang banyak krim, maka kamu bisa mencoba pancake! Selain itu, pancake juga cocok untuk dijadikan sebagai sarapan bersama dengan segelas cangkir kopi!",
      image: "assets/image/pancake.jpg",
      rate: 5,
      price: 25000),
  Desserts(
      id: 4,
      nama: "Red Velvet",
      tipe: 'Cake',
      shortdesc: "Kue cokelat merah dengan krim keju",
      desc:
          "Kamu pasti tahu cake berwarna merah ini, ya, Red Velvet! namanya mirip seperti girlband asal Korea, tetapi yang ini bisa dimakan dan juga mengenyangkanmu lho!",
      image: "assets/image/red velvet cake.jpg",
      rate: 5,
      price: 35000),
  Desserts(
      id: 5,
      nama: "Strawberry Cake",
      tipe: 'Cake',
      shortdesc: "Kue krim stoberi",
      desc:
          "Jika kamu suka dengan kue yang manis sekaligus asam, maka strawberry shortcake adalah pilihan yang tepat untukmu!",
      image: "assets/image/strawberry shortcake.jpg",
      rate: 5,
      price: 35000),
  Desserts(
      id: 6,
      nama: "Waffle",
      tipe: 'Cake',
      shortdesc: "Sajian khas untuk sarapan dari Belgia",
      desc:
          "Jika kamu menyukai pancake, maka kamu pun akan menyukai hidangan satu ini! Waffle biasa disajikan sebagai sarapan oleh orang Belgia dan sangat cocok juga untuk dijadikan dessert dan disajikan dengan berbagai topping!",
      image: "assets/image/waffle.jpg",
      rate: 5,
      price: 25000),
];
