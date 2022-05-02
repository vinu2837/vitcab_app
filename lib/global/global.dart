import 'package:firebase_auth/firebase_auth.dart';
import 'package:vitcab_app/models/direction_details_info.dart';
import 'package:vitcab_app/models/user_model.dart';


final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;
UserModel? userModelCurrentInfo;
List dList = []; //ONLINE-ACTIVE driverskey info list
DirectionDetailsInfo? tripDirectionDetailsInfo;
String? chosenDriverId="";
String cloudMessagingServerToken = "key=AAAAiKdXt-c:APA91bGrt3-_l3P1_YNYp7uHr-JEX_jW1f46pnHWK7R67aPSAQ75RFS29A42mzA77e-s_g7bf1MLU3Z9Ov17SJpBE8T65iCI49JXkTay9UdBL3ndNA6AEOGsKcfZC2G7sgMJttV_YaPi";
String userDropOffAddress = "";
String driverCarDetails="";
String driverName="";
String driverPhone="";
double countRatingStars=0.0;
String titleStarsRating="";