class TravlogModel {
  String name;
  String content;
  String place;
  String image;

  TravlogModel(this.name, this.content, this.place, this.image);
}

List<TravlogModel> travlogs = travlogsData
    .map((item) => TravlogModel(
        item['name'], item['content'], item['place'], item['image']))
    .toList();

var travlogsData = [
  {
    "name": "\"Yogyakarta!\"",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "place": "Yogyakarta, Indonesia",
    "image": "assets/images/travlog_yogyarkata.jpg"
  },
  {
    "name": "\"Tokyo!\"",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "place": "Tokyo, Japan",
    "image": "assets/images/travlog_tokyo.jpg"
  },
  {
    "name": "\"Yogyakarta!\"",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "place": "Yogyakarta, Indonesia",
    "image": "assets/images/travlog_yogyarkata.jpg"
  },
  {
    "name": "\"Tokyo!\"",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
    "place": "Tokyo, Japan",
    "image": "assets/images/travlog_tokyo.jpg"
  },
];
