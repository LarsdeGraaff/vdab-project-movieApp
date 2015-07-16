package be.vdab.domain;

import javax.persistence.*;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Actor extends Person {

    @Lob
    private String picture;
    @Lob
    private String biography;


    public Actor(String picture, String biography) {
        this.picture = picture;
        this.biography = biography;
    }

    public Actor() {
    }



    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
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
