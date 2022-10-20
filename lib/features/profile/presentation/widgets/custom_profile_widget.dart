class CustomProfile extends StatelessWidget {
  const CustomProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


///API : fetchFiFOption
final loadingfetchFiFOption = false.obs
Future<void> fetchFiFOption() async {
    loadingfetchFiFOption(true);
    await _apiBaseHelper.onNetworkRequesting(
      url: '/wallet/transfer',
      methode: METHODE.post,
      isAuthorize: true,
      ).then((response) {
            
    loadingfetchFiFOption(false);
 }).onError((ErrorModel error, stackTrace) {
    loadingfetchFiFOption(false);
      debugPrint('fetchFiFOption Error : {error.statusCode}');
 }


///API : fetchApi
final loadingfetchApi = false.obs
Future<void> fetchApi() async {
    loadingfetchApi(true);
    await _apiBaseHelper.onNetworkRequesting(
      url: 'endpoint',
      methode: METHODE.post,
      isAuthorize: true,
      ).then((response) {
       Do Sth     
    loadingfetchApi(false);
 }).onError((ErrorModel error, stackTrace) {
    loadingfetchApi(false);
      debugPrint('fetchApi Error : {error.statusCode}');
 }