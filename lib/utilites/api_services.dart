import 'package:dd_travel_app/utilites/shared_prefs.dart';
import 'package:intl/intl.dart';


class ApiServices{

static const String baseUrl='http://ddtravels.wcnltd.com/api/';

//auth url
static const String loginUrl='${baseUrl}login';


  Map<String, String> defaultHeader = {
    'Accept': 'application/json',
  };

Future<Map<String, String>> headerWithToken() async{
    var getHeaderWithToken = {
    'Accept':'application/json',
    'Authorization':'${await SharedPrefs().getToken()}'
  };
    return getHeaderWithToken;

  }

}
class ApiKeyName{
  //otp
  static const String email='email';
  static const String password='password';
  //user profile key
  static const String USER_ID='apps_user_id';
  static const String USER_FIRST_NAME='apps_user_first_name';
  static const String USER_LAST_NAME='apps_user_last_name';
  static const String USER_DOB='apps_user_dob';
  static const String USER_EMAIL='apps_user_email';
  static const String USER_GENDER='apps_user_gender';
  static const String USER_NATIONALITY='apps_user_nationality';
  static const String USER_EMIRATES_ID='apps_user_emirates_id_number';
  //user image key

}

