import 'package:flutter/material.dart';
import 'package:job_timer/app/entities/project_status.dart';

class HeaderProjectsMenu extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          padding: const EdgeInsets.all(8),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: constraints.maxWidth * 0.45,
                child: DropdownButtonFormField<ProjectStatus>(
                  borderRadius: BorderRadius.circular(10),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    isCollapsed: true,
                  ),
                  items: ProjectStatus.values
                      .map(
                        (status) => DropdownMenuItem(
                          value: status,
                          child: Text(status.label),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                  width: constraints.maxWidth * 0.45,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text(
                      'New Project',
                      style: TextStyle(fontSize: 16),
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }

  @override
  double get maxExtent => 80.0;

  @override
  double get minExtent => 80.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
