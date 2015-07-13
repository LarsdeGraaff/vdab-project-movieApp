package be.vdab.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Producer extends Person{
    private String picture;
    private String bigography;

    public Producer(String picture, String bigography) {
        this.picture = picture;
        this.bigography = bigography;
    }

    public Producer() {
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getBigography() {
        return bigography;
    }

    public void setBigography(String bigography) {
        this.bigography = bigography;
    }

    @Override
    public String toString() {
        return "Producer{" +
                "id=" + getId() +
                ", picture='" + picture + '\'' +
                ", bigography='" + bigography + '\'' +
                '}';
    }
}
