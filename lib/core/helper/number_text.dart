class NumberText extends Object {
  static String replaceAllNumberIntoEnglish(String text) {
    try {
      String x = text
          .replaceAll("۰", "0")
          .replaceAll("۱", "1")
          .replaceAll("۲", "2")
          .replaceAll("٣", "3")
          .replaceAll("٤", "4")
          .replaceAll("٥", "5")
          .replaceAll("٦", "6")
          .replaceAll("٧", "7")
          .replaceAll("٨", "8")
          .replaceAll("۹", "9")
          .replaceAll("٠", "0")
          .replaceAll("١", "1")
          .replaceAll("٢", "2")
          .replaceAll("٣", "3")
          .replaceAll("٤", "4")
          .replaceAll("٥", "5")
          .replaceAll("٦", "6")
          .replaceAll("٧", "7")
          .replaceAll("٨", "8")
          .replaceAll("٩", "9");

      return x;
    } catch (e) {
      return text;
    }
  }
}
