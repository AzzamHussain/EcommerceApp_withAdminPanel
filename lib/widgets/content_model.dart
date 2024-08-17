class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent({required this.image,required this.title,required this.description});
  
}
List <UnboardingContent> contents=[
  UnboardingContent( description: 'Pick your food from our menu\n   more than 35',
  image: "assets/screen1.png", 
  title: "Select from our\n        Best Menu"),
UnboardingContent( description: '          You can pay on cash and  Card\n               payment is available          ',
image: "assets/screen2.png", 
title: "Easy and Online payment"),
UnboardingContent( description: '     Deliver your food at your door step',
image: "assets/screen3.png", 
title: "Quick delivery at your door step")
];