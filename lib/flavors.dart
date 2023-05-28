Flavor currentFlavor = Flavor.development;

enum Flavor {
  development,
  production;

  bool get isDevelopment => this == Flavor.development;
  bool get isProduction => this == Flavor.production;

  String get baseUrl {
    if (isDevelopment) {
      return 'https:// to DEV';
    }
    return 'https:// to Production';
  }

  bool get shouldHideUncompleted {
    if (isDevelopment) {
      return false;
    }
    return true;
  }
}
