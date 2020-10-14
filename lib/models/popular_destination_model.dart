class PopularDestinationModel {
  String name;
  String country;
  String image;

  PopularDestinationModel(this.name, this.country, this.image);
}

List<PopularDestinationModel> populars = popularsData
    .map((item) =>
        PopularDestinationModel(item['name'], item['country'], item['image']))
    .toList();

var popularsData = [
  {
    "name": "Bali",
    "country": "Indonesia",
    "image": "assets/images/destination_bali.jpg"
  },
  {
    "name": "Paris",
    "country": "France",
    "image": "assets/images/destination_paris.jpg"
  },
  {
    "name": "Rome",
    "country": "Italy",
    "image": "assets/images/destination_rome.jpg"
  },
  {
    "name": "New York",
    "country": "USA",
    "image": "assets/images/destination_newyork.jpg"
  },
  {
    "name": "Bali",
    "country": "Indonesia",
    "image": "assets/images/destination_bali.jpg"
  },
  {
    "name": "Paris",
    "country": "France",
    "image": "assets/images/destination_paris.jpg"
  },
  {
    "name": "Rome",
    "country": "Italy",
    "image": "assets/images/destination_rome.jpg"
  },
  {
    "name": "New York",
    "country": "USA",
    "image": "assets/images/destination_newyork.jpg"
  },
  {
    "name": "Bali",
    "country": "Indonesia",
    "image": "assets/images/destination_bali.jpg"
  },
  {
    "name": "Paris",
    "country": "France",
    "image": "assets/images/destination_paris.jpg"
  },
  {
    "name": "Rome",
    "country": "Italy",
    "image": "assets/images/destination_rome.jpg"
  },
  {
    "name": "New York",
    "country": "USA",
    "image": "assets/images/destination_newyork.jpg"
  },
];
