package com.gdreams.util;

/**
 * Created by Sougata on 4/9/2016.
 */
public class Validators {

    /**
     * Check an object is null or not. If null then throw a NullPointerException exception.
     *
     * @param obj          object to be checked.
     * @param defaultValue defaultvalue of object name
     */
    public static <T> T checkNull(T obj, T defaultValue) {
        if (null == obj) {
//            LOGGER.error(defaultValue + " cannot be null here.");
            throw new NullPointerException(defaultValue + " cannot be null here.");
        }
        return obj;
    }
}
