package com.gdreams.util;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;

import static com.gdreams.util.Validators.checkNull;

/**
 * Created by sougata on 11/06/16.
 */
public class Helpers {

    /**
     * Returns a string whose value is this string, with any leading and trailing
     * whitespace removed.
     *
     * @param input input string to be trimmed.
     * @return string without any leading and trailing whitespace
     */
    public static String trimWhiteSpaceOfString(@Nonnull final String input) {
        checkNull(input, "input");

        if (Boolean.FALSE.equals(isStringEmpty(input)))
            return input.trim();
        return input;
    }

    /**
     * Check if the string is empty or not. Returns true if the string is empty otherwise false.
     *
     * @param input input string to be checked.
     * @return true | false
     */
    public static boolean isStringEmpty(@Nullable final String input) {
        return (input == null || "".equals(input));
    }
}
