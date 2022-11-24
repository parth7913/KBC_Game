import 'dart:io';

class book {
  book(String? id, title, author) {

    print("book id:$id");
    print("book title:$id");
    print("book author:$author");
  }
}

void main() {
  String? id, title, author;
  print("book id:");
  id = stdin.readLineSync();
  print("book title:");
  title = stdin.readLineSync();
  print("book author:");
  author = stdin.readLineSync();
  book(id, title, author);
}
