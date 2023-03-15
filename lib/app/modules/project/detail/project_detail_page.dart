import 'package:flutter/material.dart';
import 'package:job_timer/app/core/ui/job_timer_icons.dart';
import 'package:job_timer/app/modules/project/detail/widget/project_detail_appbar.dart';
import 'package:job_timer/app/modules/project/detail/widget/project_pie_chart.dart';
import 'package:job_timer/app/modules/project/detail/widget/project_task_tile.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ProjectDetailAppbar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 20),
                child: ProjectPieChart(),
              ),
              const ProjectTaskTile(),
              const ProjectTaskTile(),
              const ProjectTaskTile(),
            ]),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 10),
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(JobTimerIcons.check),
                    label: const Text('End Project')),
              ),
            ),
          )
        ],
      ),
    );
  }
}
