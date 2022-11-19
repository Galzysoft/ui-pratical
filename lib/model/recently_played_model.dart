///here we define a model class to house ous object values
class RecentlyPlayedModel {
  final String imageUrl;
  final void Function() play;
  final List<String> firstThree;

  RecentlyPlayedModel(
      {required this.imageUrl, required this.play, required this.firstThree});
}
