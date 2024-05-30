class BaseAPI {
  static String base = "https://localhost:7140";
  static String authPath = "$base/login";
  
  Map<String, String> headers = {
    "Content-Type": "application/json; charset=UTF-8" 
    };
}