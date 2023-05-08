void main () {
  emitNumbers()
    .listen( (int value) {
    print('string value: $value');
  });
}

// async* returns string
Stream<int> emitNumbers () async* {

  final valuesToEmit = [1,2,3,4,5];

  for(int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }

}