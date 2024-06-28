



import '../../controller/linker/linker.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController pageController=PageController();
  int Currentpage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context,orentation){
          return GestureDetector(
            onHorizontalDragEnd: (DragEndDetails details){
              if(details.primaryVelocity!>0)
                {
                  pageController.previousPage(
                      duration: (Duration(milliseconds: 500)),
                      curve: Curves.ease);
                }
              else if(details.primaryVelocity!<0)
                {
                  pageController.nextPage(duration:(
                      Duration(milliseconds: 500)),
                      curve: Curves.ease);

                }
            },
            child: PageView(
              controller: pageController,
              onPageChanged: (int page){
                setState(() {
                  Currentpage=page;
                });
              },
              children: [
           HealthyDietReusable(text: '     Welcome\n To Healthy-DIET',
               icon:'assets/salad.png',
             text1: 'Your Ultimate diet Companion For\n'
              '             Total Well-being',),
                HealthyDietReusable(text: 'Elevate Your Health\n'
                    '    with Healthy-Deit', icon:MyImages.salad,text1: 'Maximize Your Wellness journey\n'
                    '               With Expert Tips'),
                HealthyDietReusable(text:'Embrace Wellness with \n'
                    '          Healthy-Diet', icon:MyImages.fruits,
                    text1: 'Embrace Nutrient-Rich Choice Elevate \n'
                        '     Well-Being Thrive With Healthy-Diet'),


              ],
            ),
          );
        },
      ),
    );
  }
}

