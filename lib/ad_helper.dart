import 'dart:io';

class AdHelper{
    static String get bannerAdUnitId{
        if(Platform.isAndroid){
            return 'ca-app-pub-2125081689829972/2091025764';
        }else if (Platform.isIOS){
            return 'ca-app-pub-3940256099942544/6300978111';
        }else{
            throw UnsupportedError("Unsupported Platform");
        }
    }
}