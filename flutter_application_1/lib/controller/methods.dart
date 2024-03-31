class Methods {
  static List<Map> filterByCategory(List<Map> products, String category) {
    return products
        .where((product) => product['category'] == category)
        .toList();
  }

  static String capitalizeEachWord(String text) {
    // Split the text into words
    List<String> words = text.split(' ');

    // Capitalize the first letter of each word
    words = words.map((word) {
      if (word.isNotEmpty) {
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      } else {
        return '';
      }
    }).toList();

    // Join the words back together
    return words.join(' ');
  }
}
