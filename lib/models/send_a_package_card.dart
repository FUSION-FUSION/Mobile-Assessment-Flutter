import '../constants/assets_constant_name.dart';

class Package {
  final String title, description;
  final List<String> images;
  final bool isLight, isComingSoon;

  Package({
    required this.title,
    required this.description,
    required this.images,
    required this.isLight,
    required this.isComingSoon,
  });
}

List<Package> packages = [
  Package(
    title: 'Same State',
    description: 'Deliveries within the \nsame state',
    images: [icBike, icRoadSameState],
    isLight: false,
    isComingSoon: false,
  ),
  Package(
    title: 'Interstate',
    description: 'Deliveries outside your current state',
    images: [icTruck, icRoadInterstate],
    isLight: false,
    isComingSoon: false,
  ),
  Package(
    title: 'Chater',
    description: 'Request a vehicle',
    images: [deliveryVan, icRoadCharter],
    isLight: false,
    isComingSoon: false,
  ),
  Package(
    title: 'international',
    description: 'Send packages to other countries',
    images: [icAeroplane],
    isLight: true,
    isComingSoon: true,
  ),
];
