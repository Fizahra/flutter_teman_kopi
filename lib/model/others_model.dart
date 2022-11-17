class Others {
  Others(
      {required this.nama,
      required this.tipe,
      required this.desc,
      required this.shortdesc,
      required this.image,
      required this.rate,
      required this.price});

  final String desc;
  final String image;
  final String nama;
  final int price;
  final int rate;
  final String shortdesc;
  final String tipe;
}

List<Others> others = [
  Others(
      nama: "Cat Ball",
      tipe: 'Cat Toy/Sewa',
      shortdesc: "Mainan bola untuk kucing",
      desc: "Bola adalah salah satu mainan favorit kucing",
      image: "assets/image/cat ball.jpg",
      rate: 4,
      price: 5000),
  Others(
      nama: "Catnip Yellyfish",
      tipe: 'Cat Toy/Sewa',
      shortdesc: "Mainan untuk kucing",
      desc: "Ini adalah mainan untuk menstimulasi kucing agar aktif bergerak",
      image: "assets/image/catnip yellyfish.jpg",
      rate: 5,
      price: 5000),
  Others(
      nama: "Felt Mouse",
      tipe: 'Cat Toy/Sewa',
      shortdesc: "Boneka tikus untuk kucing",
      desc:
          "Boneka tikus bisa dijadikan sebagai mainan kucing dan kucing akan menganggapnya sebagai buruannya",
      image: "assets/image/felt mouse.jpg",
      rate: 5,
      price: 5000),
  Others(
      nama: "Laser Pen",
      tipe: 'Cat Toy/Sewa',
      shortdesc: "Mainan laser untuk kucing",
      desc:
          "Cahaya dari laser bisa menstimulasi kucing agar bergerak dengan aktif. Cahaya akan dianggap sebagai buruannya",
      image: "assets/image/laser pen.jpg",
      rate: 5,
      price: 7000),
];
