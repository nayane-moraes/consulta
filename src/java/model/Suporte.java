package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

public class Suporte {
    public static String getDiaDaSemana(String yyyyMMdd) throws ParseException{
        String[] sDias = {"", "Dom","Seg","Ter",
            "Qua","Qui","Sex","Sab"};
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date ontem = sdf.parse(yyyyMMdd);
         GregorianCalendar gc = new GregorianCalendar();
        gc.setTime(ontem);

        int dia = gc.get(GregorianCalendar.DAY_OF_WEEK);

        return sDias[dia];
    }
}
