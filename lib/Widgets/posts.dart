import 'package:flutter/material.dart';
import '../post_model.dart';
import '../post_details_screen.dart';

//Classe responsável pela visualização dos posts na tela em forma de Widget
class Posts extends StatelessWidget {
  final List<PostModel> posts;

  const Posts(this.posts, {Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, int index) {
        return buildPost(posts[index], context);
      },
    );
  }

  //Definindo como será a visualização de cada post separadamente
  Widget buildPost(PostModel post, context) {
    return Card(
      //margin: const EdgeInsets.all(10.0),
      child: ListTile(
        title: Text(post.title),
        subtitle: Row(
          children: <Widget>[
            const Icon(Icons.account_circle, size: 16.0),
            Text(post.user),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_rounded, size: 20.0),
        leading: Image.network(
          'http://10.0.2.2:8000${post.imageUrl}',
          height: 70,
          width: 70,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostDetailsScreen(post),
            ),
          );
        },
      ),
    );
  }
}
