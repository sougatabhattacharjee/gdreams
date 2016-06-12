package com.gdreams.util.contact;

import javax.annotation.Nonnull;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import static com.gdreams.util.Validators.checkNull;
import static com.gdreams.util.contact.ContactParams.*;


/**
 * Created by Sougata on 4/9/2016.
 */
public class ContactHelper {

    @Nonnull
    public static String getContactEmailId() {
        final ContactHelper helpers = new ContactHelper();

        return helpers.getContactProperties(contactResourceFile).containsKey("contactEmail") ?
                helpers.getContactProperties(contactResourceFile).get("contactEmail") : defaultContactEmail;
    }

    @Nonnull
    public static String getContactPhoneNumber() {
        final ContactHelper helpers = new ContactHelper();

        return helpers.getContactProperties(contactResourceFile).containsKey("contactPhone") ?
                helpers.getContactProperties(contactResourceFile).get("contactPhone") : defaultContactPhoneNumber;
    }

    @Nonnull
    public static String getContactSkype() {
        final ContactHelper helpers = new ContactHelper();

        return helpers.getContactProperties(contactResourceFile).containsKey("contactSkype") ?
                helpers.getContactProperties(contactResourceFile).get("contactSkype") : defaultContactSkype;
    }

    @Nonnull
    public static String getContactHangout() {
        ContactHelper helpers = new ContactHelper();

        return helpers.getContactProperties(contactResourceFile).containsKey("contactHangout") ?
                helpers.getContactProperties(contactResourceFile).get("contactHangout") : defaultContactHangout;
    }

    /* Social contacts */
    @Nonnull
    public static String getContactFacebook() {
        ContactHelper helpers = new ContactHelper();

        return helpers.getContactProperties(contactResourceFile).containsKey("contactFacebook") ?
                helpers.getContactProperties(contactResourceFile).get("contactFacebook") : defaultContactFacebook;
    }

    @Nonnull
    public static String getContactLinkedin() {
        ContactHelper helpers = new ContactHelper();

        return helpers.getContactProperties(contactResourceFile).containsKey("contactLinkedin") ?
                helpers.getContactProperties(contactResourceFile).get("contactLinkedin") : defaultContactLinkedin;
    }

    @Nonnull
    public static String getContactTwitter() {
        ContactHelper helpers = new ContactHelper();

        return helpers.getContactProperties(contactResourceFile).containsKey("contactTwitter") ?
                helpers.getContactProperties(contactResourceFile).get("contactTwitter") : defaultContactTwitter;
    }

    @Nonnull
    public static String getContactGooglePlus() {
        ContactHelper helpers = new ContactHelper();

        return helpers.getContactProperties(contactResourceFile).containsKey("contactGoogleplus") ?
                helpers.getContactProperties(contactResourceFile).get("contactGoogleplus") : defaultContactGooglePlus;
    }

    @Nonnull
    private Map<String, String> getContactProperties(@Nonnull final String fileName) {
        checkNull(fileName, "fileName");

        //Get file from resources folder
        final ClassLoader classLoader = getClass().getClassLoader();
        final File file = new File(classLoader.getResource(fileName).getFile());

        final Map<String, String> properties = new HashMap<>();

        try (final Scanner scanner = new Scanner(file)) {

            while (scanner.hasNextLine()) {
                final String line = scanner.nextLine();
                final String key = line.split("=")[0];
                final String value = line.split("=")[1];
                properties.put(key, value);
            }

            scanner.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

        return properties;

    }
}
