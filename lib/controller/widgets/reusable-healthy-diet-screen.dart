


import '../linker/linker.dart';

class HealthyDietReusable extends StatelessWidget {
  String text;
  String text1;
  String icon;
   HealthyDietReusable({super.key,
   required this.text,required this.icon,
   required this.text1});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [


          Container(
             // height: 630,
              width: double.infinity,
              color: Colors.teal,
              child: Column(
                  children:[
                    Center(
                      child: Container(
                          child: Container(
                            height: 250,
                            width: 250,
                            child: Image(image: AssetImage(icon),color: Colors.white,fit: BoxFit.fill,),

                          ).paddingOnly(top: 40)
                      ),
                    ),
                    SizedBox(height: 40,),
                    // color: Colors.teal,
                    Container(
                      height: 280,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))

                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 45,),
                          Text(text,style: TextStyle(color: Colors.black,fontSize: 20
                              ,fontWeight: FontWeight.w800)),
                          SizedBox(height: 15,),
                          Text(text1, style: TextStyle(color: Colors.black,fontSize: 15),)
                          ,SizedBox(height: 35,),
                        InkWell(
                          onTap: (){

                          },
                          child: Container(
                            height: 40,
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.teal,
                              ),

                              child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white),))),
                        ),
    
                        //  ElevatedButton(onPressed: (){
                           // Get.to(()=>FirstPage());

                          //},style: ElevatedButton.styleFrom(
                         //  //   primary: Colors.teal,
                         //       minimumSize: Size(300, 50)
                         // )
                           

                             
                          SizedBox(height: 15,),
                          Text('Skip')


                        ],

                      ),
                    ),

                  ]
              )
          )
        ],
      ),
    );
  }
}
