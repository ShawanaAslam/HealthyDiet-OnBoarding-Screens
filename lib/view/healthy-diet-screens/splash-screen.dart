



import '../../controller/linker/linker.dart';



class HealthySplash extends StatefulWidget {
  const HealthySplash({super.key});

  @override
  State<HealthySplash> createState() => _HealthySplashState();
}

class _HealthySplashState extends State<HealthySplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),()
    {
      Get.to(()=>OnboardingScreen());
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Healthy-DEIT",style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.w800,fontSize: 30),),
            // Container(
            //   height:400 ,
            //   width: 200,
            //   child:Image.asset(MyImages.apple,color: Colors.white,) ,
            // ),
           // CircularProgressIndicator(),
            SizedBox(height: 30,),
            SpinKitCircle(
              color: Colors.white,
            ),

          ],
        ),
      ),
    );
  }
}


