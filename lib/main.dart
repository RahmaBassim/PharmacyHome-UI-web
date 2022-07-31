import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/InputText.dart';
import 'model/appBar.dart';
import 'model/colors.dart';

void main(){
  runApp(
    MaterialApp(
      home:Home() ,
    )
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                color: white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    appbar(ContainerColor: green, Name: "Home", TextColor: white),
                    appbar(ContainerColor: white, Name: "About", TextColor: softgray),
                    appbar(ContainerColor: white, Name: "Services", TextColor: softgray),
                    appbar(ContainerColor: white, Name: "Our Works", TextColor: softgray),
                    appbar(ContainerColor: white, Name: "Contact Us", TextColor: softgray),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                        image: AssetImage("images/Mask Group 1.png")
                    )
                ),
                child: Container(
                  width: size.width,
                  height: 350,
                  color: Colors.grey.withOpacity(0.5),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: black.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child:Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_back_ios, color: softgray,size: 20,)),
                          )
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            inputtext(
                              Inputtext: "Lorem Ipsum",
                              color: yellow,
                              fontSize: 25,
                            ),
                            SizedBox(height: 20,),
                           inputtext(
                               Inputtext: "is simply dummy text of the printing and ",
                               color: softgray,
                               fontSize: 17),
                            SizedBox(height: 20,),
                            inputtext(
                                Inputtext: "typesetting industry. Lorem Ipsum has",
                                color: softgray,
                                fontSize: 17),
                            SizedBox(height: 20,),
                            inputtext(
                                Inputtext: " been the industry's standard",
                                color: softgray,
                                fontSize: 17),
                          ],
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: black.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child:Align(
                            alignment: Alignment.topCenter,
                            child: IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_forward_ios, color: softgray,size: 20,)),
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 1200,
                  height: 130,
                  child: Row(
                    children: [
                      Container(
                        width: 400,
                        height: 130,
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: softgray, width: 1.5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.card_giftcard, color: green,size: 50,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                inputtext(Inputtext: "Free Delivery", color: darkblack, fontSize: 20,fontweight: FontWeight.bold,),
                                inputtext(Inputtext: "For all oders over \$100", color: softgray, fontSize: 15),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 130,
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: softgray, width: 1)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.all_inbox_rounded, color: green,size: 50,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                inputtext(Inputtext: "Secure Payment", color: darkblack, fontSize: 20,fontweight: FontWeight.bold,),
                                inputtext(Inputtext: "100% Sercure Payment", color: softgray, fontSize: 15),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 130,
                        decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: softgray, width: 1)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.account_circle_rounded, color: green,size: 50,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                inputtext(Inputtext: "24/7 Support", color: darkblack, fontSize: 20,fontweight: FontWeight.bold,),
                                inputtext(Inputtext: "Delicated Support", color: softgray, fontSize: 15),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 650,
                      height: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          inputtext(Inputtext: "About us", color: black, fontSize: 30),
                          SizedBox(height: 30,),
                          inputtext(
                              Inputtext: "Lorem Ipsum is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry  standard dummy text ever since the 1500s",
                              color: softgray,
                              fontSize: 20),
                          SizedBox(height: 20,),
                          inputtext(
                              Inputtext: "Lorem Ipsum is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry  standard dummy text ever since the 1500s",
                              color: softgray,
                              fontSize: 20),
                        ],
                      ),
                    ),
                    Container(
                      width: 500,
                      height: 200,
                      child: Stack(
                        alignment: Alignment.topRight,
                        fit: StackFit.expand,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        children: [
                          Container(
                            width: 500,
                            height: 250,
                            color: yellow1,
                          ),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: Container(
                              width: 500,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("images/Mask Group 2.png")
                                )
                              ),
                            ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 500,
                      height: 200,
                      child: Stack(
                        alignment: Alignment.topRight,
                        fit: StackFit.expand,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        children: [
                          Container(
                            width: 500,
                            height: 250,
                            color: yellow1,
                          ),
                          Positioned(
                            bottom: 15,
                            right: 15,
                            child: Container(
                              width: 500,
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("images/Mask Group 3.png")
                                  )
                              ),
                            ),)
                        ],
                      ),
                    ),
                    Container(
                      width: 650,
                      height: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          inputtext(
                              Inputtext: "Lorem Ipsum is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry  standard dummy text ever since the 1500s",
                              color: softgray,
                              fontSize: 20),
                          SizedBox(height: 20,),
                          inputtext(
                              Inputtext: "Lorem Ipsum is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry  standard dummy text ever since the 1500s",
                              color: softgray,
                              fontSize: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                    fit: BoxFit.fill,
                    image: AssetImage("images/Mask Group 4.png")
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        inputtext(
                            Inputtext: "Buy all your medicines at 50% offer",
                            color: white,
                            fontSize: 25,
                            fontweight: FontWeight.bold,
                        ),
                        SizedBox(height: 20,),
                        inputtext(
                          Inputtext: "Get extra cashback with great deals and discounts",
                          color: softgray,
                          fontSize: 15,
                        ),
                        SizedBox(height: 50,),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                border: Border.all(color: darkgray, width: 4)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  inputtext(
                                      Inputtext: "00",
                                      color: softgray,
                                      fontSize: 20,
                                    fontweight: FontWeight.bold,
                                  ),
                                  inputtext(
                                      Inputtext: "Days",
                                      color: softgray,
                                      fontSize: 20,
                                    fontweight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: softgray,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: softgray,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(color: darkgray, width: 4)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  inputtext(
                                    Inputtext: "00",
                                    color: softgray,
                                    fontSize: 20,
                                    fontweight: FontWeight.bold,
                                  ),
                                  inputtext(
                                    Inputtext: "Hours",
                                    color: softgray,
                                    fontSize: 20,
                                    fontweight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: softgray,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: softgray,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(color: darkgray, width: 4)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  inputtext(
                                    Inputtext: "00",
                                    color: softgray,
                                    fontSize: 20,
                                    fontweight: FontWeight.bold,
                                  ),
                                  inputtext(
                                    Inputtext: "Minutes",
                                    color: softgray,
                                    fontSize: 20,
                                    fontweight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: softgray,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: softgray,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  border: Border.all(color: darkgray, width: 4)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  inputtext(
                                    Inputtext: "00",
                                    color: softgray,
                                    fontSize: 20,
                                    fontweight: FontWeight.bold,
                                  ),
                                  inputtext(
                                    Inputtext: "Seconds",
                                    color: softgray,
                                    fontSize: 20,
                                    fontweight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/qr.png")
                        )
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/Mask Group 6.png")
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    inputtext(
                        Inputtext: "Services",
                        color: darkblack,
                        fontSize: 30,
                      fontweight: FontWeight.bold,
                    ),
                    SizedBox(height: 60,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius:3,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 200,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("images/Mask Group 5.png")
                                  )
                                ),
                              ),
                              SizedBox(height: 20,),
                              inputtext(Inputtext: "Drugs", color: gray, fontSize: 20, fontweight: FontWeight.bold,)
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius:3,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 200,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("images/Mask Group 51.png")
                                  )
                                ),
                              ),
                              SizedBox(height: 20,),
                              inputtext(Inputtext: "Medical Supplies", color: gray, fontSize: 20, fontweight: FontWeight.bold,)
                            ],
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius:3,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 200,
                                height: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("images/Mask Group 52.png")
                                  )
                                ),
                              ),
                              SizedBox(height: 20,),
                              inputtext(Inputtext: "Offers", color: gray, fontSize: 20, fontweight: FontWeight.bold,)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 400,
                color: softwhite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 500,
                        height: 200,
                        child: Stack(
                          alignment: Alignment.topRight,
                          fit: StackFit.expand,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          children: [
                            Container(
                              width: 300,
                              height: 300,
                              color: green,
                            ),
                            Positioned(
                              bottom: 15,
                              right: 15,
                              child: Container(
                                width: 500,
                                height: 300,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("images/Mask Group 7.png")
                                    )
                                ),
                              ),)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        width: 650,
                        height: 400,
                        child: Column(
                          children: [
                            Center(
                              child:
                              inputtext(Inputtext: "QR Code", color: darkblack, fontSize: 30, fontweight: FontWeight.bold,),
                            ),
                            SizedBox(height: 25,),
                            inputtext(
                                Inputtext: "Lorem Ipsum is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry  standard dummy text ever since the 1500s",
                                color: softgray,
                                fontSize: 20),
                            SizedBox(height: 20,),
                            inputtext(
                                Inputtext: "Lorem Ipsum is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry  standard dummy text ever since the 1500s",
                                color: softgray,
                                fontSize: 20),
                            SizedBox(height: 20,),
                            inputtext(
                                Inputtext: "Lorem Ipsum is simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry  standard dummy text ever since the 1500s",
                                color: softgray,
                                fontSize: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 400,
                color: white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 600,
                          height: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              inputtext(
                                  Inputtext: "Lorem Ipsum is simply dummy text of the printing and ",
                                  color: softgray,
                                  fontSize: 15),
                              inputtext(
                                  Inputtext: " typesetting industry. Lorem Ipsum has been the industry",
                                  color: softgray,
                                  fontSize: 15),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("images/Icon awesome-twitter-square.png"),
                                      )
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage("images/Icon awesome-facebook-square.png"),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage("images/Group 6916.png"),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30,),
                            ],
                          ),
                        ),
                        Container(
                          width: 600,
                          height: 350,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("images/last.png")
                            )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 100,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage("images/phone.png"),width: 15,height: 15,),
                                  inputtext(
                                    Inputtext: "01112892722",
                                    fontSize: 15,
                                    color: green,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage("images/phone.png"),width: 15,height: 15,),
                                  inputtext(
                                    Inputtext: "01112892722",
                                    fontSize: 15,
                                    color: green,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage("images/map.png"),width: 20,height: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      inputtext(
                                        Inputtext: "Lorem Ipsum is simply dummy text  ",
                                        fontSize: 15,
                                        color: green,
                                      ),
                                      inputtext(
                                        Inputtext: "of the printing",
                                        fontSize: 15,
                                        color: green,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: size.width,
                      height: 50,
                      color: gray1,
                      child: Center(
                        child: inputtext(
                          Inputtext: "© 2022 Flutter developer.",
                          color: black,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

