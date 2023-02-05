class Others {
  Others({
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

  factory Others.fromJson(Map<String, dynamic> json) => Others(
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

final others = <Others>[
  Others(
      id: 1,
      nama: "Cat Ball",
      tipe: 'Cat Toy/Sewa',
      shortdesc: "Mainan bola untuk kucing",
      desc: "Bola adalah salah satu mainan favorit kucing",
      image: "assets/image/cat ball.jpg",
      rate: 4,
      price: 5000),
  Others(
      id: 2,
      nama: "Catnip Yellyfish",
      tipe: 'Cat Toy/Sewa',
      shortdesc: "Mainan untuk kucing",
      desc: "Ini adalah mainan untuk menstimulasi kucing agar aktif bergerak",
      image: "assets/image/catnip yellyfish.jpg",
      rate: 5,
      price: 5000),
  Others(
      id: 3,
      nama: "Felt Mouse",
      tipe: 'Cat Toy/Sewa',
      shortdesc: "Boneka tikus untuk kucing",
      desc:
          "Boneka tikus bisa dijadikan sebagai mainan kucing dan kucing akan menganggapnya sebagai buruannya",
      image: "assets/image/felt mouse.jpg",
      rate: 5,
      price: 5000),
  Others(
      id: 4,
      nama: "Laser Pen",
      tipe: 'Cat Toy/Sewa',
      shortdesc: "Mainan laser untuk kucing",
      desc:
          "Cahaya dari laser bisa menstimulasi kucing agar bergerak dengan aktif. Cahaya akan dianggap sebagai buruannya",
      image: "assets/image/laser pen.jpg",
      rate: 5,
      price: 7000),
];
