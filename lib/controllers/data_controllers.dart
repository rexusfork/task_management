import 'package:get/get.dart';
import 'package:latihan_golang_resfull_api/services/service.dart';

class DataController extends GetxController{
  DataService service = DataService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<dynamic> _myData = [];
  List<dynamic> get myData => _myData;

  Future<void> getData() async{
    Response response = await service.getData();
    _isLoading = true;
    if (response.statusCode == 200){
      _myData = response.body;
      update();
    } else {
      print(response.status);
    }
  }
}