import 'package:flutter/material.dart';
import 'post_model.dart';

//Classe responsável pela visualização da tela de detalhes
//(Mostrada ao clicar num post específico)
class PostDetailsScreen extends StatelessWidget {
  final PostModel posts;

  const PostDetailsScreen(this.posts, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(posts.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              posts.content,
              style: const TextStyle(fontSize: 16.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network('https://postsgabriel.herokuapp.com${posts.imageUrl}'),
              ),
            ),
            Row(
              children: <Widget>[
                const Icon(Icons.account_circle),
                Text(posts.user),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
