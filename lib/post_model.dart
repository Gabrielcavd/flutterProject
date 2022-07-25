//Classe que define como será estruturado o post baseado na API
class PostModel{
  late String title;
  late String user;
  late String content;
  late String imageUrl;

  PostModel(Map<String, dynamic> parsedJson){
    title = parsedJson['title'];
    user = parsedJson['user'];
    imageUrl = parsedJson['image'];
    content = parsedJson['content'];
  }
}