class PackageModel {
  String? title;
  String? description;
  String? mainImage;
  String? bgImage;
  String? topSectionImage;
  PackageModel(
      {this.title,
      this.description,
      this.mainImage,
      this.bgImage,
      this.topSectionImage});
}

List<PackageModel> packages = [
  PackageModel(
    title: 'Same State',
    description: 'Deliveries within the \nsame state',
    mainImage: 'assets/images/ic-bike.png',
    bgImage: 'assets/images/ic-road-same-state.png',
    topSectionImage: 'assets/images/ic-curve.png',
  ),
  PackageModel(
    title: 'Interstate',
    description: 'Deliveries outside \nyour current state',
    mainImage: 'assets/images/Delivery-Van.png',
    bgImage: 'assets/images/ic-road-interstate.png',
    topSectionImage: 'assets/images/ic-curve.png',
  ),
  PackageModel(
    title: 'Charter',
    description: 'Request a vehichle',
    mainImage: 'assets/images/ic-truck.png',
    bgImage: 'assets/images/ic-road-charter.png',
    topSectionImage: 'assets/images/ic-curve.png',
  ),
  PackageModel(
    title: 'International',
    description: 'Send packages to \nother countries',
    mainImage: 'assets/images/ic-aeroplane.png',
    bgImage: 'assets/images/ic-road-charter.png',
    topSectionImage: 'assets/images/ic-curve.png',
  ),
];
