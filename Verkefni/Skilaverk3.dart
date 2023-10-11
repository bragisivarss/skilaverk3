import 'dart:io';

void addItemToList(){
  stdout.write("What would you like to add to the list?: ");
  var userAdd = stdin.readLineSync();
  shoppingList.add(userAdd!);
}

List<String> shoppingList = [];

void main() {
  bool programOnOrOff = true;

  while (programOnOrOff) {
    stdout.write(
        "Hello, what would you like to do?\n1. View shopping list.\n2. Add item to shopping list\n3. exit program: ");

    var userInput = stdin.readLineSync();
    int? userNumber = int.tryParse(userInput!);

    if (userNumber == 1) {
      print(shoppingList);
    } else if (userNumber == 2) {
      addItemToList();
    } else if (userNumber == 3) {
      programOnOrOff = false;
    }
  }
}