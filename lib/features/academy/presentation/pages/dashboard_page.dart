import 'package:academy/features/academy/presentation/widgets/recent_activities_card.dart';
import 'package:academy/features/academy/presentation/widgets/student_dashboard_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const RecentActivitiesCard(),
          const SizedBox(
            height: 6,
          ),
          const StudentDashboardCard()
        ],
      ),
    );
  }
}
