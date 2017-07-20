package com.entities;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by tanuj on 7/18/17.
 */
@Entity
public class Resource {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private Integer resourceId;

    @Column
    private String description;


    @ManyToOne
    private User createdBy;

    @ManyToOne
    private Topic topic;

    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCreated;

    @Column
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastUpdated;

    @Column
    private String linkUrl;

    @Column
    private String docUrl;

    public String getLinkUrl() {
        return linkUrl;
    }

    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl;
    }

    public String getDocUrl() {
        return docUrl;
    }

    public void setDocUrl(String docUrl) {
        this.docUrl = docUrl;
    }

    public enum ResourceType {
        LinkResource("LinkResource"), DocumentResource("DocumentResource");
        String value;


        ResourceType(String value) {
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public void setValue(String value) {
            this.value = value;
        }


    }
    @Enumerated(EnumType.STRING)
    private ResourceType resourceType;


    public ResourceType getResourceType() {
        return resourceType;
    }

    public void setResourceType(ResourceType resourceType) {
        this.resourceType = resourceType;
    }
    public Integer getResourceId() {
        return resourceId;
    }

    public void setResourceId(Integer resourceId) {
        this.resourceId = resourceId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }
}
