package com.gdreams.domain;

import com.gdreams.util.Validators;

import javax.annotation.Nonnull;
import javax.persistence.*;

import java.io.Serializable;

import static com.gdreams.util.Validators.checkNull;

/**
 * Created by sougata on 11/06/16.
 */
@Entity
public class Subscription implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "enable", nullable = false, updatable = true)
    private boolean enable;

    public Subscription(boolean enable, String email) {
        this.enable = enable;
        this.email = email;
    }

    private transient String emailToDelete;

    public String getEmailToDelete() {
        return this.emailToDelete;
    }

    public void setEmailToDelete(String emailToDelete) {
        this.email = emailToDelete;
        this.enable = false;
    }

    public Subscription() {
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(@Nonnull String email) {
        checkNull(email, "email");

        this.email = email;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {

        this.id = id;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setEnable( boolean enable) {
        this.enable = enable;
    }

    @Override
    public String toString() {
        return this.email;
    }
}
