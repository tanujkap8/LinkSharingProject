package com.entities;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by tanuj on 7/15/17.
 */
@Entity
public class Subscription {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int subcriptionId;

   public enum Seriousness {
        Serious("Serious"), VerySerious("VerySerious"), Casual("Casual");
        String value;

        Seriousness(String value) {
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public void setValue(String value) {
            this.value = value;
        }
    }

    public Seriousness getSeriousness() {
        return seriousness;
    }

    public void setSeriousness(Seriousness seriousness) {
        this.seriousness = seriousness;
    }

    @Enumerated(EnumType.STRING)
    Seriousness seriousness = Seriousness.VerySerious;
    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCreated;

    @ManyToOne
    private Topic topic;

    @ManyToOne
    private User user;

    public int getSubcriptionId() {
        return subcriptionId;
    }

    public void setSubcriptionId(int subcriptionId) {
        this.subcriptionId = subcriptionId;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
