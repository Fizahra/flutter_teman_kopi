class Kucing {
  Kucing({
    required this.id,
    required this.nama,
    required this.image,
  });

  int id;
  String nama;
  String image;

  factory Kucing.fromJson(Map<String, dynamic> json) => Kucing(
        id: json["id"],
        nama: json["nama"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "image": image,
      };
}

final List<Kucing> kucingKu = [
  Kucing(
    id: 1,
    nama: "Kutil",
    image: 'assets/image/Kuc1.jpg',
  ),
  Kucing(
    id: 2,
    nama: "Kutil",
    image: 'assets/image/Kuc2.jpg',
  ),
  Kucing(
    id: 3,
    nama: "Kutil",
    image: 'assets/image/Kuc3.jpg',
  ),
  Kucing(
    id: 4,
    nama: "Kutil",
    image: 'assets/image/Kuc4.jpg',
  ),
  Kucing(
    id: 5,
    nama: "Kutil",
    image: 'assets/image/Kuc5.jpg',
  ),
  Kucing(
    id: 6,
    nama: "Kutil",
    image: 'assets/image/Kuc6.jpg',
  ),
  Kucing(
    id: 7,
    nama: "Kutil",
    image: 'assets/image/Kuc7.jpg',
  ),
  Kucing(
    id: 8,
    nama: "Kutil",
    image: 'assets/image/Kuc8.jpg',
  ),
  Kucing(
    id: 9,
    nama: "Kutil",
    image: 'assets/image/Kuc9.jpg',
  ),
  Kucing(
    id: 10,
    nama: "Kutil",
    image: 'assets/image/Kuc10.jpg',
  ),
  Kucing(
    id: 11,
    nama: "Kutil",
    image: 'assets/image/Kuc11.jpg',
  ),
  Kucing(
    id: 12,
    nama: "Kutil",
    image: 'assets/image/Kuc12.jpg',
  ),
];
