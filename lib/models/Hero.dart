
class Hero{

  String nome;
  String bio;
  String imagemUrl;

  Hero({this.bio, this.imagemUrl, this.nome});

  Hero.fromJson(Map<String, dynamic> jsonData){
    nome = jsonData['nome'];
    bio = jsonData['bio'];
    imagemUrl = jsonData['imageurl'];
  }
}