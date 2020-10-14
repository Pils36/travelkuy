class CarouselModel {
  String image;

  CarouselModel(this.image);
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item['image'])).toList();

var carouselsData = [
  {"image": "assets/images/happy_music.png"},
  {"image": "assets/images/more_music.png"},
  {"image": "assets/images/music.png"},
];
