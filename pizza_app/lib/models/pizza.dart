class Pizza {
  String name, des, price;
  int numImg;
  final double rate;

  Pizza(
      {required this.name,
      required this.des,
      required this.numImg,
      required this.price,
      required this.rate});
}

final List<Pizza> listOfPizza = [
  Pizza(
      name: 'Margherita',
      des: 'A classic Italian pizza\n with tomatoes,',
      numImg: 2,
      price: '\$20',
      rate: 2),
  Pizza(
      name: 'Meat Feast',
      des: 'Loaded with meats\n and toppings.',
      numImg: 3,
      price: '\$30',
      rate: 1),
  Pizza(
      name: 'Veggie Delight',
      des: 'Fresh veggies with\n special sauce.',
      numImg: 4,
      price: '\$40',
      rate: 3),
  Pizza(
      name: 'Spicy Diablo',
      des: 'Spicy sauce with\n hot peppers.',
      numImg: 1,
      price: '\$50',
      rate: 0),
];

List<Pizza> AddingTocart = [];
