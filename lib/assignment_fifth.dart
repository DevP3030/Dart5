import 'dart:io';

void greetUser({String name = "Ganesha"}) {
  print("Hello,$name");

  var sqNum = (int num) {
    print(num * num);
  };
  sqNum(10);
}

void exceptionHandling() {
  int div = 0;
  print("enter any interger value");
  String? uNum = stdin.readLineSync()!;
  try {
    print("\n-----Try Block------");
    int num = int.parse(uNum);
    div = 100 ~/ num;
    print("--------------------");
  }
  on FormatException {
    print("\n------On Block------");
    print("User Enter Characters it will not work");
    print("--------------------");
  }
  catch (e) //catch block will catch "IntegerDivisionByZeroException"
      {
    print("\n----Catch Block-----");
    print(e);
    print("--------------------");
  }
  finally {
    print("\n---Finally Block----");
    print("Final Division : $div");
    print("--------------------");
  }
}


//Async And Await part 1
void getData() async
{
  print("Fetching Data From server...");
  try {
    await fetchData();
  }
  catch (e) {
    print("Failed to fetch Data : $e");
  }
}

//Async And Await part 2
Future<void> fetchData() async
{
  return Future.delayed(Duration(seconds: 1),
          () {
        bool success = true;
        if (success) {
          print("Data Recieved from Server");
        }
        else {
          throw Exception("Server Error Occured...");
        }
      }
  );
}



//Combine All Concepts 1
void fetchItemsHandler() async
{
  print("Fetching List Elements...");

  try {
    List<String> listElements = await fetchElements();
    print("Elements Fetch successfully");

    listElements.forEach((ele) {
      print("Element : $ele");
    });
  }
  catch (e) {
    print("Failed to Fetch : $e");
  }
}

//Combine All Concepts 2
Future<List<String>> fetchElements() async
{
  return Future.delayed(Duration(seconds: 7),()
  {
    bool success = true;
    if (success)
    {
      return ["Brave", "Prakhar", "Prabhal"];
    }
    else
    {
      throw Exception("Failed to Fetch elements from Server");
    }
  });
}

