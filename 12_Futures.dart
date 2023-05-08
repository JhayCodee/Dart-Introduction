void main () {
  
  print('Inicio');
  
  httpGet('https://luis-vargas.com/fornite').then((value){
    print(value);
  }).catchError((err) {
      print('Error: $err');
  });
  
  print('Fin');
  
}

Future<String> httpGet( String url ) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';
    //return 'Respuesta de la peticion http';
  });
}