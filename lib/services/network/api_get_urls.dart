import 'package:dipper/utils/configs/config_environments.dart';

class GetUrl {
  String getUrlAPI() {
    return Environment().config.baseUrl;
  }

  String getUrlKeyCloak() {
    return "${Environment().config.baseUrl}/auth/realms/master";
  }

  String versionUrl() {
    return "/api/v1/";
  }
}
