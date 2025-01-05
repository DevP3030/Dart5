import 'dart:io';

import 'package:assignment_fifth/assignment_fifth.dart' as assignment_fifth;

void main()
{
  print("\n********************\nFunctions...");
  //Named Function And Anonymous Function
  assignment_fifth.greetUser(name: "Prati");

  print("\n********************\nException Handling");
  //Exceptional Handling
  assignment_fifth.exceptionHandling();

  print("\n********************\nAsync And Await");
  //Async And Await
  assignment_fifth.getData();

  print("\n********************\nCombining All Concepts");
  //Combine All Concepts
  assignment_fifth.fetchItemsHandler();
}
