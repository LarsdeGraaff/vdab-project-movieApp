package be.vdab.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by jeansmits on 10/07/15.
 */
@Entity
public class Producer{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String picture;
    private String bigography;

    public Producer(String picture, String bigography) {
        this.picture = picture;
        this.bigography = bigography;
    }

    public Producer() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
                "id=" + id +
                ", picture='" + picture + '\'' +
                ", bigography='" + bigography + '\'' +
                '}';
    }
}
