class Drinks {
  Drinks(
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

List<Drinks> drinks = [
  Drinks(
      nama: "Cappucino",
      tipe: 'Panas',
      shortdesc: "Kopi susu khas Italia",
      desc:
          "Jika kamu tidak terlalu menyukai kopi hitam, maka Cappucino cocok untukmu! Cappucino adalah kopi susu khas Italia dengan steam dan foam milk!",
      image: "assets/image/cappucino.jpg",
      rate: 5,
      price: 25000),
  Drinks(
      nama: "Mocatchino",
      tipe: 'Panas',
      shortdesc: "Kopi dengan susu dan cokelat",
      desc:
          "Jika kamu adalah seorang cokelat lovers, maka kamu wajib mencoba Mochaccino kami! Kopi ini dipadu dengan susu cair dan cokelat bubuk",
      image: "assets/image/mocha.jpg",
      rate: 5,
      price: 28000),
  Drinks(
      nama: "Latte",
      tipe: 'Panas',
      shortdesc: "Kopi susu dengan seni latte yang imut",
      desc:
          "Jika kamu tidak terlalu suka dengan kopi yang pahit dan juga suka hal-hal yang imut, maka Latte cocok untukmu! Barista kami sangat terampil dalam membuat Latte Art!",
      image: "assets/image/latte.jpg",
      rate: 5,
      price: 22000),
  Drinks(
      nama: "Esspreso",
      tipe: 'Panas',
      shortdesc: "Ekstrak kopi panas dari biji kopi pilihan",
      desc:
          "Jika kamu menyukai kopi hitam dengan rasa yang kuat, maka esspreso adalah pilihan yang pas untukmu! Esspreso di cafe kami dibuat dari biji kopi pilihan dan diolah oleh barista yang termapil",
      image: "assets/image/esspreso.jpg",
      rate: 5,
      price: 15000),
  Drinks(
      nama: "Americatno",
      tipe: 'Panas',
      shortdesc: "Kopi hitam dengan air panas",
      desc:
          "Jika kamu menyukai kopi hitam tapi ingin yang rasanya tidak terlalu kuat, maka Americano cocok untukmu! Karena americano adalah kopi hitam yang ditambahkan dengan air lagi",
      image: "assets/image/americano.jpg",
      rate: 5,
      price: 18000),
];
