class Delivery {
  final String status;
  final String pickuplocation;
  final String dropofflocation;
  final bool delivered;
  final DateTime? pickuptime;
  final DateTime? dropofftime;
  Delivery({
    required this.status,
    required this.pickuplocation,
    required this.dropofflocation,
    this.delivered = false,
    this.pickuptime,
    this.dropofftime,
  });
}

List<Delivery> deliveries = [
  Delivery(
    status: 'Delivered Successfully',
    pickuplocation: 'Bishop’s Court, Owerri.',
    dropofflocation: 'Bishop’s Court, Owerri.',
    delivered: true,
  ),
  Delivery(
    status: 'Delivered Successfully',
    pickuplocation: 'Bishop’s Court, Owerri.',
    dropofflocation: 'Bishop’s Court, Owerri.',
    delivered: true,
  ),
  Delivery(
    status: 'Delivered Successfully',
    pickuplocation: 'Bishop’s Court, Owerri.',
    dropofflocation: 'Bishop’s Court, Owerri.',
  ),
  Delivery(
    status: 'Delivered Successfully',
    pickuplocation: 'Bishop’s Court, Owerri.',
    dropofflocation: 'Bishop’s Court, Owerri.',
  ),
];
