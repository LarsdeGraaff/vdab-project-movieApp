package be.vdab.domain;

import javax.persistence.*;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Actor extends Person {

    @Lob
    private byte[] picture;
    private String biography;

    public Actor(byte[] picture, String biography) {
        this.picture = picture;
        this.biography = biography;
    }

    public Actor() {
    }


    public byte[] getPicture() {
        return picture;
    }

    public void setPicture(byte[] picture) {
        this.picture = picture;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }


    @Override
    public String toString() {
        return "Actor{" +
                "id=" + getId() +
                ", picture='" + picture + '\'' +
                ", biography='" + biography + '\'' +
                '}';
    }
}
