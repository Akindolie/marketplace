import '../datamodels/product.dart';

class DataService {
  //Holds the image data for the carousel
  final List<String> imgList = [
    'assets/images/BeautySale.png',
    'assets/images/FashionDay.png',
  ];

  final List<Product> products = [
    Product(
        desc: 'Simple green femal crop top apparel',
        id: '001A',
        isFav: true,
        price: '10.00',
        type: 'Shirt',
        rating: 4.6,
        reviewsCount: 12345,
        imageURL: 'assets/images/femaleGreenShirt-CV.png',
        fullImageURL: 'assets/images/femaleGreenShirt-FV.png'),
    Product(
        desc: 'Simple pink unisex sweatshirt apparel',
        id: '002B',
        isFav: true,
        price: '20.00',
        type: 'Shirt',
        rating: 4.9,
        reviewsCount: 345,
        imageURL: 'assets/images/pinkSweatShirt-CV.png',
        fullImageURL: 'assets/images/pinkSweatShirt-FV.png'),
    Product(
        desc: 'Brown Hoodie with Cap Combo',
        id: '003C',
        isFav: false,
        price: '15.30',
        type: 'Shirt',
        rating: 4.5,
        reviewsCount: 10345,
        imageURL: 'assets/images/brownHoodie-CV.png',
        fullImageURL: 'assets/images/brownHoodie-FV.png'),
    Product(
        desc: 'Blue Zipper Jacket',
        id: '004D',
        isFav: true,
        price: '32.20',
        type: 'Shirt',
        rating: 4.7,
        reviewsCount: 19345,
        imageURL: 'assets/images/zipperBlueJacket-CV.png',
        fullImageURL: 'assets/images/zipperBlueJacket-FV.png'),
    Product(
        desc: 'Red Varsity Jacket',
        id: '005E',
        isFav: true,
        price: '32.20',
        type: 'Shirt',
        rating: 4.9,
        reviewsCount: 19345,
        imageURL: 'assets/images/redVarsityJacket-CV.png',
        fullImageURL: 'assets/images/redVarsityJacket-FV.png'),
  ];
}
