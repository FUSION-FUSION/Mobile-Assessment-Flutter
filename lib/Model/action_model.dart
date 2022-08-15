class ActionModel {
  String? title;
  String? description;

  ActionModel({
    this.title,
    this.description
  });
}

List<ActionModel> actions = [
  ActionModel(
    title: 'Waybill History',
    description: 'Records of all your waybills.'
  ),
  ActionModel(
    title: 'Get Help',
    description: 'Get help & support from our team.'
  )
];