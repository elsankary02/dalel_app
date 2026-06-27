import 'data_model.dart';

class DalelDetailsArgs {
  final DataModel data;
  final List<DataModel>? wars;
  final List<DataModel>? recommendations;

  DalelDetailsArgs({
    required this.data,
     this.wars,
     this.recommendations,
  });
}
