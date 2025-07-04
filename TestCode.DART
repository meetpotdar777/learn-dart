// HERE YOU WILL CHECK AND PRACTICE EVERY CODE IN DART BUT REMOVE AHEAD WORDS OF THE MAIN 
//  EG : void maindart() {    <<<<<< HERE YOU HAVE TO REMOVE dart WHICH IS BESIDE THE MAIN
//  print('Hello, World!');
// }
//     PRACTICE THE CODE AND CHECK THE OUTPUT
import 'package:http/http.dart' as http;
void mainDartPackages() async {
  
}
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  if (response.statusCode == 200) {
    print('Response data: ${response.body}');
  } else {
    print('Failed to load data: ${response.statusCode}');
  }
}