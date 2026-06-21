import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/components/default_historical_category_card.dart';
import '../../../../core/databases/firebase_strings.dart';
import '../../../../core/utils/extensions/extensions.dart';
import '../../data/model/historical_periods_model.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsWidget extends StatelessWidget {
  const HistoricalPeriodsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final users = FirebaseFirestore.instance.collection(
      FirebaseStrings.historicalPeriods,
    );

    return FutureBuilder(
      future: users.get(),
      builder: (context, snapshot) {
        final data = snapshot.data!.docs;
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !data[0].exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          final List<HistoricalPeriodsModel> historicalPeriods = data
              .map((e) => HistoricalPeriodsModel.fromJson(e.data()))
              .toList();

          return SizedBox(
            height: context.h * 0.093,
            child: ListView.builder(
              scrollDirection: .horizontal,
              shrinkWrap: true,
              itemCount: historicalPeriods.length,
              itemBuilder: (context, index) => DefaultHistoricalCategoryCard(
                historicalPeriodsModel: historicalPeriods[index],
                onTap: () {},
              ),
            ),
          );
        }

        return Text("loading");
      },
    );
  }
}
