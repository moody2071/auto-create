import 'package:intl/intl.dart';

/*fonts*/
const defaultFont = 'sa';
const ayman = 'ayman';
const ayman2 = 'ayman2';
const fontRegular = 'Regular';
const fontMedium = 'Medium';
const fontSemibold = 'Semibold';
const fontBold = 'Bold';

final formatter = DateFormat('h:mm a', 'en');

const BaseUrl = 'https://iqonic.design/themeforest-images/prokit';
const PlayStoreUrl =
    'https://play.google.com/store/apps/details?id=com.iqonic.prokitflutter';

class MyHiveBoxs {
  static const String kUsersBox = "users_box";
}

class CurrentData {
  // static User? currentUser;
  // static UserHiveModel? userHiveModel;
  // static UserModel? user;
}

class SharedPreferencesConst {
  static const String isInfoScreen = "isInfoScreen";
  static const String quickPreparation = "quickPreparation";
  static const String isLogined = "isLogined";
  static const String userId = "userId";
}

class MyBoxs {
  static const String kFavorites = "favorites";
}

class MyTiwilioAccount {
  static String accountSid = "AC9ebaea386e7beea0fe6c8b5ffc85a00a";
  static String authToken = "c7aea146d5f8410ac3e6bf561d2cd963";
  static String twilioNumber = "+14155238886";
}
