void main () async {
  
  print('Inicio');
  
  try {
    final value = await httpGet('https://luis-vargas.com/fornite');
    print(value);
  }
  catch (err) {
    print('Tenemos un error: $err');
  }
  
  print('Fin');
  
}

Future<String> httpGet( String url ) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw 'Error en la peticion';
  
  //return 'Tenemos un valor de la peticion';

}