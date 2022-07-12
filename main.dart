void main() {

   test().then((value) {
    print(value);
  }).whenComplete(() {
    print("Wheen completed worked");
  }).timeout(Duration(seconds: 1));// timeout da 1sekundan keyin malumot kelmasa xatolik tashlaydi
  
}Future<String> test() async{
  await Future.delayed(Duration(seconds:3));
  // Future.error("Some error occured");
  return Future.value("Value from future");
}