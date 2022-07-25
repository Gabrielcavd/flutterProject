import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'post_model.dart';
import 'Widgets/posts.dart';

//Classe responsável pela organização da estrutura do aplicativo
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//Classe responsável por gerar o body da página principal do aplicativo
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PostModel> posts = [];

  //Método responsável por fazer a requisição http à API
  void getPosts() async{
    try {
      var url = Uri.parse('http://10.0.2.2:8000/api/posts/get-posts');
      final response = await get(url);
      posts.clear();

      setState((){
        for(var post in json.decode(response.body)['posts']){
          posts.add(PostModel(post));
        }
      });
    } catch(e){
      print('Ocorreu um erro!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('SIGfeed'),
      ),
      body: Posts(posts),
      floatingActionButton: FloatingActionButton(
        onPressed: getPosts,
        tooltip: ('Refresh Feed'),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
