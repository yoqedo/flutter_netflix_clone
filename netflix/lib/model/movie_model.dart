class MovieImg{
  String imageUrl;
  String imageText;

  MovieImg({
    this.imageUrl,
    this.imageText,
  });

}

final List <MovieImg> movies = [
  MovieImg(
    imageUrl: 'assets/images/spiderman.jpg',
    imageText: 'SPIDERMAN',
  ),
   MovieImg(
    imageUrl: 'assets/images/countdown.jpg',
    imageText: 'Countdown, time is Coming',
  ),
  MovieImg(
    imageUrl: 'assets/images/birds.jpg',
    imageText: 'Birds of Pray: The fantaboulus Emancipation of Harley Quinn',
  ),
    MovieImg(
    imageUrl: 'assets/images/joker.jpg',
    imageText: 'Joker, the real Story',
  ),
  
];