class Movie {
  String image;
  String imageText;
  String genre;
  String year;
  String country;
  String length;
  String descr;
  String movieimgs;
  List<String> screenshots;

  Movie({
    this.image,
    this.imageText,
    this.genre,
    this.year,
    this.country,
    this.length,
    this.descr,
    this.movieimgs,
    this.screenshots,
  });
}

final List<Movie> movie = [
  Movie(
    image: 'assets/images/spiderman.jpg',
    imageText: 'SPIDERMAN',
    genre: 'Adventure',
    year: '2018',
    country: 'USA',
    length: '120 min',
    descr:
        'Our friendly neighborhood Super Hero decides to join his best friends Ned, MJ, and the rest of the gang on a European vacation. However, Peter\'s plan to leave super heroics behind for a few weeks are quickly scrapped when he begrudgingly agrees to help Nick Fury uncover the mystery of several elemental creature attacks, creating havoc across the continent.',
    screenshots: [
      'assets/images/spiderman1.jpeg',
      'assets/images/spiderman2.jpeg',
      'assets/images/spiderman3.jpeg',
    ],
  ),
   Movie(
    image: 'assets/images/countdown.jpg',
    imageText: 'Countdown, time is Coming',
    genre: 'Thriller',
    year: '2020',
    country: 'Denmark',
    length: '90 min',
    descr:
        'Our friendly neighborhood Super Hero decides to join his best friends Ned, MJ, and the rest of the gang on a European vacation. However, Peter\'s plan to leave super heroics behind for a few weeks are quickly scrapped when he begrudgingly agrees to help Nick Fury uncover the mystery of several elemental creature attacks, creating havoc across the continent.',
    screenshots: [
      'assets/images/spiderman1.jpeg',
      'assets/images/spiderman2.jpeg',
      'assets/images/spiderman3.jpeg',
    ]
  ),
   Movie(
    image: 'assets/images/birds.jpg',
    imageText: 'Birds of Pray: The fantaboulus Emancipation of Harley Quinn',
    genre: 'Drama',
    year: '2019',
    country: 'Mexico',
    length: '120 min',
    descr:
        'Our friendly neighborhood Super Hero decides to join his best friends Ned, MJ, and the rest of the gang on a European vacation. However, Peter\'s plan to leave super heroics behind for a few weeks are quickly scrapped when he begrudgingly agrees to help Nick Fury uncover the mystery of several elemental creature attacks, creating havoc across the continent.',
     screenshots: [
      'assets/images/spiderman1.jpeg',
      'assets/images/spiderman2.jpeg',
      'assets/images/spiderman3.jpeg',
    ]
  ),
   Movie(
    image: 'assets/images/joker.jpg',
    imageText: 'Joker, the real Story',
    genre: 'Thriller',
    year: '2019',
    country: 'USA',
    length: '180 min',
    descr:
        'Our friendly neighborhood Super Hero decides to join his best friends Ned, MJ, and the rest of the gang on a European vacation. However, Peter\'s plan to leave super heroics behind for a few weeks are quickly scrapped when he begrudgingly agrees to help Nick Fury uncover the mystery of several elemental creature attacks, creating havoc across the continent.',
     screenshots: [
      'assets/images/spiderman1.jpeg',
      'assets/images/spiderman2.jpeg',
      'assets/images/spiderman3.jpeg',
    ]
  ),
];
