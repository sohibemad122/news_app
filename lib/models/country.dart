class Country {
  final String name;
  final String code;

  const Country({
    required this.name,
    required this.code
  });

  static List<Country> get countries => [
    Country(name: "United States", code: "us"),
    Country(name: "United Kingdom", code: "gb"),
    Country(name: "Canada", code: "ca"),
    Country(name: "Australia", code: "au"),
    Country(name: "India", code: "in"),
    Country(name: "China", code: "cn"),
    Country(name: "Japan", code: "jp"),
  ];
}