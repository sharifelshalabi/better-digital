import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences preferences;
  static const String keyIsRemember = 'key_IsRemember';
  static const String keyUserToken = 'key_UserToken';
  static const String keyUserName = 'key_UserName';
  static const String keyEmail = 'key_Email';
  static const String keyMobile = 'key_Mobile';
  static const String keyId = 'key_Id';
  static const String keyRole = 'key_Role';
  static const String keyIsLogged = 'key_IsLogged';
  static const String keyIsCompany = 'key_IsCompany';
  static const String keyIsFirstTime = 'key_IsFirstTime';
  static const String keyIsEnglish = 'key_IsEnglish';
  static const String keyJob = 'key_Job';
  static const String keyWebsite = 'key_Website';
  static const String keyRememberEmail = 'key_RememberEmail';

  static init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static void saverRecentSearches(
      {required String search, required String recentSearchKey}) async {
    List<String> temp = getRecentSearches(recentSearchKey: recentSearchKey);

    if (temp.contains(search)) {
      String tempValue = temp.where((element) => element == search).first;
      temp.removeWhere((element) => element == search);
      temp.add(tempValue);
    } else {
      if (temp.length < 10) {
        temp.add(search);
      } else {
        temp.removeAt(0);
        temp.add(search);
      }
    }

    preferences.setStringList(recentSearchKey, temp);
  }

  static void deleteRecentSearch(
      {required String search, required String recentSearchKey}) async {
    List<String> temp = getRecentSearches(recentSearchKey: recentSearchKey);
    temp.removeWhere((element) => element == search);
    preferences.setStringList(recentSearchKey, temp);
  }

  static void clearRecentSearches({required String recentSearchKey}) async {
    preferences.setStringList(recentSearchKey, []);
  }

  static List<String> getRecentSearches({required String recentSearchKey}) {
    List<String> temp = preferences.getStringList(recentSearchKey) ?? [];

    return temp;
  }

  static void saveIsRemember(bool isDark) async {
    String isDarkString = jsonEncode(isDark.toString());
    preferences.setString(keyIsRemember, isDarkString);
  }

  static bool getIsRemember() {
    String? isDarkString = preferences.getString(keyIsRemember);

    if (isDarkString == null) {
      return false;
    }
    isDarkString = jsonDecode(isDarkString);
    if (isDarkString == 'false') {
      return false;
    } else {
      return true;
    }
  }

  static void saveEnglish(bool isEnglish) async {
    String isEnglishString = jsonEncode(isEnglish.toString());
    preferences.setString(keyIsEnglish, isEnglishString);
  }

  static bool getEnglish() {
    String? isEnglishString = preferences.getString(keyIsEnglish);

    if (isEnglishString == null) {
      return false;
    }
    isEnglishString = jsonDecode(isEnglishString);
    if (isEnglishString == 'true') {
      return false;
    } else {
      return true;
    }
  }

  static Future<void> saveUserTokenFromLocalMemory(String? userToken) async {
    String userTokenEncoded = jsonEncode(userToken);
    preferences.setString(keyUserToken, userTokenEncoded);
  }

  static String getUserTokenFromLocalMemory() {
    String? userToken = preferences.getString(keyUserToken);

    if (null == userToken) {
      return '';
    }
    String userTokenDecoded = jsonDecode(userToken);
    return userTokenDecoded;
  }

  static Future<void> saveCompanyJobFromLocalMemory(String? job) async {
    String jobEncoded = jsonEncode(job);
    preferences.setString(keyJob, jobEncoded);
  }

  static String getCompanyFromLocalMemory() {
    String? job = preferences.getString(keyJob);

    if (null == job) {
      return '';
    }
    String jobDecoded = jsonDecode(job);
    return jobDecoded;
  }

  static Future<void> saveWebsiteFromLocalMemory(String? website) async {
    String websiteEncoded = jsonEncode(website);
    preferences.setString(keyWebsite, websiteEncoded);
  }

  static String getWebsiteFromLocalMemory() {
    String? website = preferences.getString(keyWebsite);

    if (null == website) {
      return '';
    }
    String websiteDecoded = jsonDecode(website);
    return websiteDecoded;
  }

  static Future<void> saveUserNameFromLocalMemory(String? userName) async {
    String userNameEncoded = jsonEncode(userName);
    preferences.setString(keyUserName, userNameEncoded);
  }

  static String getUserNameFromLocalMemory() {
    String? userName = preferences.getString(keyUserName);

    if (null == userName) {
      return '';
    }
    String userNameDecoded = jsonDecode(userName);
    return userNameDecoded;
  }

  static Future<void> saveEmailFromLocalMemory(String? email) async {
    String emailEncoded = jsonEncode(email);
    preferences.setString(keyEmail, emailEncoded);
  }

  static String getEmailFromLocalMemory() {
    String? email = preferences.getString(keyEmail);

    if (null == email) {
      return '';
    }
    String emailDecoded = jsonDecode(email);
    return emailDecoded;
  }

  static Future<void> saveMobileFromLocalMemory(String? mobile) async {
    String mobileEncoded = jsonEncode(mobile);
    preferences.setString(keyMobile, mobileEncoded);
  }

  static String getMobileFromLocalMemory() {
    String? mobile = preferences.getString(keyMobile);

    if (null == mobile) {
      return '';
    }
    String mobileDecoded = jsonDecode(mobile);
    return mobileDecoded;
  }

  static Future<void> saveRememberEmailFromLocalMemory(
      String? rememberEmail) async {
    String rememberEmailEncoded = jsonEncode(rememberEmail);
    preferences.setString(keyRememberEmail, rememberEmailEncoded);
  }

  static String getRememberEmailLocalMemory() {
    String? rememberEmail = preferences.getString(keyRememberEmail);

    if (null == rememberEmail) {
      return '';
    }
    String rememberEmailDecoded = jsonDecode(rememberEmail);
    return rememberEmailDecoded;
  }

  static Future<void> saveUserIdFromLocalMemory(String? id) async {
    String idEncoded = jsonEncode(id);
    preferences.setString(keyId, idEncoded);
  }

  static String getUserIdFromLocalMemory() {
    String? id = preferences.getString(keyId);

    if (null == id) {
      return '';
    }
    String idDecoded = jsonDecode(id);
    return idDecoded;
  }

  static Future<void> saveUserRoleFromLocalMemory(String? role) async {
    String roleEncoded = jsonEncode(role);
    preferences.setString(keyRole, roleEncoded);
  }

  static String getUserRoleFromLocalMemory() {
    String? role = preferences.getString(keyRole);

    if (null == role) {
      return '';
    }
    String roleDecoded = jsonDecode(role);
    return roleDecoded;
  }

  static Future<void> saveIsLoggedFromLocalMemory(bool? isLogged) async {
    String isLoggedEncoded = jsonEncode(isLogged.toString());
    preferences.setString(keyIsLogged, isLoggedEncoded);
  }

  static bool getIsLoggedFromLocalMemory() {
    String? isLogged = preferences.getString(keyIsLogged);

    if (null == isLogged) {
      return false;
    }
    isLogged = jsonDecode(isLogged);
    if (isLogged == 'false') {
      return false;
    } else {
      return true;
    }
  }

  static Future<void> saveIsCompanyFromLocalMemory(bool? isCompany) async {
    String isCompanyEncoded = jsonEncode(isCompany.toString());
    preferences.setString(keyIsCompany, isCompanyEncoded);
  }

  static bool getIsCompanyFromLocalMemory() {
    String? isCompany = preferences.getString(keyIsCompany);

    if (null == isCompany) {
      return false;
    }
    isCompany = jsonDecode(isCompany);
    if (isCompany == 'false') {
      return false;
    } else {
      return true;
    }
  }

  static Future<void> saveIsFirstTimeFromLocalMemory(bool? isFirstTime) async {
    String isFirstTimeEncoded = jsonEncode(isFirstTime.toString());
    preferences.setString(keyIsFirstTime, isFirstTimeEncoded);
  }

  static bool getIsFirstTimeFromLocalMemory() {
    String? isFirstString = preferences.getString(keyIsFirstTime);

    if (isFirstString == null) {
      return true;
    }
    isFirstString = jsonDecode(isFirstString);
    if (isFirstString == 'false') {
      return false;
    } else {
      return true;
    }
  }
}
