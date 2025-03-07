import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'crm_dashboard_card.dart';
import 'crm_dashboard_view_model.dart';
import '../widgets/custom_drawer.dart';


class CrmDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<DashboardViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('CRM Dashboard'),
      ),
drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to CRM Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  DashboardCard(
                    icon: Icons.people,
                    title: 'Contacts',
                    count: viewModel.contactsCount,
                    color: Colors.blue,
                  ),
                  DashboardCard(
                    icon: Icons.assignment,
                    title: 'Tasks',
                    count: viewModel.tasksCount,
                    color: Colors.green,
                  ),
                  DashboardCard(
                    icon: Icons.attach_money,
                    title: 'Revenue',
                    count: viewModel.revenue,
                    color: Colors.purple,
                  ),
                  DashboardCard(
                    icon: Icons.notifications,
                    title: 'Alerts',
                    count: viewModel.alertsCount,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
