enum ProjectStatus {
  emAndamento (label: 'In Progress'),
  finalizado (label: 'Finished');

  final String label;

  const ProjectStatus({required this.label});
}
