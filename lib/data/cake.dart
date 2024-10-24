class Cake {
  final String name;
  final List images;
  final String description;
  final String price;

  Cake(
      {required this.name,
      required this.images,
      required this.description,
      required this.price});
}

List<Cake> cakes = [
  Cake(
      name: 'cake 1',
      images: [
        'assets/images/g1.jpg',
        'assets/images/g2.jpg',
        'assets/images/g3.jpg',
      ],
      description: 'any description you want to add',
      price: '\$35'),
  Cake(
      name: 'cake 2',
      images: [
        'assets/images/we1.jpg',
        'assets/images/we2.jpg',
        'assets/images/we3.jpg',
      ],
      description: 'any description you want to add',
      price: '\$20'),
  Cake(
      name: 'cake 3',
      images: [
        'assets/images/wed1.jpg',
        'assets/images/wed2.jpg',
        'assets/images/wed3.jpg',
      ],
      description: 'any description you want to add',
      price: '\$18'),
  Cake(
      name: 'cake 4',
      images: [
        'assets/images/wea1.jpg',
        'assets/images/wea2.jpg',
        'assets/images/wea3.jpg',
      ],
      description: 'any description you want to add',
      price: '\$80')
];
