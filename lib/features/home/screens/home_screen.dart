import 'package:material_ui/material_ui.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_text_styles.dart';
import '../../../data/fake_data.dart';

/// Figma: "3 - A - Home Page". First simple version with fake data.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowBase,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 24, 32, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good Morning',
                      style: AppTextStyles.title.copyWith(color: AppColors.font2, fontSize: 30)),
                  const SizedBox(height: 4),
                  Text("Rise And Shine! It's Breakfast Time",
                      style: AppTextStyles.body.copyWith(color: AppColors.orangeBase)),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (final category in FakeData.categories)
                          Column(
                            children: [
                              Container(
                                width: 50,
                                height: 62,
                                decoration: BoxDecoration(
                                  color: AppColors.yellow2,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(category.icon, color: AppColors.orangeBase),
                              ),
                              const SizedBox(height: 6),
                              Text(category.name, style: AppTextStyles.body),
                            ],
                          ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text('Best Seller', style: AppTextStyles.subtitle),
                    const SizedBox(height: 12),
                    Expanded(
                      child: ListView.separated(
                        itemCount: FakeData.foods.length,
                        separatorBuilder: (_, _) => const Divider(),
                        itemBuilder: (context, i) {
                          final food = FakeData.foods[i];
                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(food.name, style: AppTextStyles.subtitle),
                            subtitle: Text(food.description, style: AppTextStyles.body),
                            trailing: Text(
                              '\$${food.price.toStringAsFixed(2)}',
                              style: AppTextStyles.subtitle.copyWith(color: AppColors.orangeBase),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
