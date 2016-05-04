package com.ever.offer.in.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class DateFormatUtil {
    public static String getformattedDate(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(date);
    }

    /**
     * Method for calculate difference in two date for login.
     * 
     * @param valid
     * @return
     */
    public static int getRemainingDays(String valid) {
        int numberOfDaysRemaining = 0;
        String dateInString = new SimpleDateFormat(IConstant.VALID_UP_TO_DATE_FORMAT).format(new Date());
        SimpleDateFormat myFormat = new SimpleDateFormat(IConstant.VALID_UP_TO_DATE_FORMAT);
        String inputString1 = valid;
        try {
            Date date1 = myFormat.parse(dateInString);
            Date date2 = myFormat.parse(inputString1);
            Long diff = date2.getTime() - date1.getTime();
            Long d = TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
            numberOfDaysRemaining = d.intValue();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return numberOfDaysRemaining;
    }

    /**
     * Method for get simple date format.
     * 
     * @return
     */
    public static String getDate() {
        Date date = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return format.format(date);

    }

    /**
     * Get difference between two days of offer.
     * 
     * @param createdDate
     * @return
     */
    public static int getRemainingDaysForoffer(String createdDate) {
        int numberOfDaysRemaining = 0;
        String newDate = new SimpleDateFormat(IConstant.VALID_UP_TO_DATE_FORMAT).format(new Date());
        SimpleDateFormat myFormat = new SimpleDateFormat(IConstant.VALID_UP_TO_DATE_FORMAT);
        String inputString1 = createdDate;
        try {
            Date todayDate = myFormat.parse(newDate);
            Date offerCreDate = myFormat.parse(inputString1);
            Long diff = todayDate.getTime() - offerCreDate.getTime();
            Long d = TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
            numberOfDaysRemaining = d.intValue();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return numberOfDaysRemaining;
    }

    public static void main(String[] args) {
        // System.out.println("method no 4 ="+DateFormatUtil.getDate());
        System.out.println("get offer validity date=   " + DateFormatUtil.getRemainingDaysForoffer("06-01-2016"));
        // System.out.println("get remaining date=   " + DateFormatUtil.getRemainingDays("04-01-2016"));
    }

    /**
     * System date
     * 
     * @return
     */
    public static String getStringDate() {
        return new Date().toString();
    }
}