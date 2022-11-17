class Cat {
  Cat({
    required this.id,
    required this.nama,
    required this.image,
  });

  int id;
  String nama;
  String image;

  factory Cat.fromJson(Map<String, dynamic> json) => Cat(
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

final List<Cat> myCat = [
  Cat(
    id: 1,
    nama: "Kutil",
    image: 'assets/image/Cat1.jpg',
  ),
  Cat(
    id: 2,
    nama: "Kutil",
    image: 'assets/image/Cat2.jpg',
  ),
  Cat(
    id: 3,
    nama: "Kutil",
    image: 'assets/image/Cat3.jpg',
  ),
  Cat(
    id: 4,
    nama: "Kutil",
    image: 'assets/image/Cat4.jpg',
  ),
  Cat(
    id: 5,
    nama: "Kutil",
    image: 'assets/image/Cat5.jpg',
  ),
  Cat(
    id: 6,
    nama: "Kutil",
    image: 'assets/image/Cat6.jpg',
  ),
  Cat(
    id: 7,
    nama: "Kutil",
    image: 'assets/image/Cat7.jpg',
  ),
  Cat(
    id: 8,
    nama: "Kutil",
    image: 'assets/image/Cat8.jpg',
  ),
  Cat(
    id: 9,
    nama: "Kutil",
    image: 'assets/image/Cat9.jpg',
  ),
  Cat(
    id: 10,
    nama: "Kutil",
    image: 'assets/image/Cat10.jpg',
  ),
  Cat(
    id: 11,
    nama: "Kutil",
    image: 'assets/image/Cat11.jpg',
  ),
  Cat(
    id: 12,
    nama: "Kutil",
    image: 'assets/image/Cat12.jpg',
  ),
];
