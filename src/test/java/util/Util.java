package util;

import java.util.UUID;

public class Util {

    public static int obtenerIdAleatorio (){
       int random = (int)(Math.random()*1000);
       return random;
    }

    public static String generarRequestIdAleatorio(){
        return UUID.randomUUID().toString();
    }
}
