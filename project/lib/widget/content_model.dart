class UnboardingContent{
  String image;
  String title;
  String description;
  UnboardingContent({required this.description, required this.image, required this.title});

}
List<UnboardingContent> contents = [
  UnboardingContent(description: 'Pick your food from our menu \n  More than 35 time', image: "images/screen1.png", title: 'Select from our Best Menu'),
  UnboardingContent(description: 'You can pay cash and\n Card payment is available', image: "images/screen2.png", title: 'Easy and Online Payment'),
];