class TesteLista{
  final String tema, categoria, topico;

  TesteLista({required this.tema, required this.categoria, required this.topico});
}
void main(){
  List<TesteLista> testeLista = [
    TesteLista(tema: "Web", categoria: "Site", topico: "html"),
  ];
  print(TesteLista);
}