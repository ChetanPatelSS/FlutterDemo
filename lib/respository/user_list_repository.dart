import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiService.dart';
import '../model/memes_model.dart';
import '../model/user_list_model.dart';
import '../data/app_url.dart';

class UserListRepository {

  final BaseApiServices _apiServices = NetworkApiService() ;

  Future<UserListModel> fetchUserList(int pageNumber)async{

    try{
      print('${AppUrl.userList}$pageNumber');
      dynamic response = await _apiServices.getGetApiResponse('${AppUrl.userList}$pageNumber');
      return response = UserListModel.fromJson(response);

    }catch(e){
      throw e ;
    }
  }

  Future<MemesModel> fetchMameList()async{

    try{
      dynamic response = await _apiServices.getGetApiResponse(AppUrl.getMemes);
      return response = MemesModel.fromJson(response);

    }catch(e){
      throw e ;
    }
  }

}