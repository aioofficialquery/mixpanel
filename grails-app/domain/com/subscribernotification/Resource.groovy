package com.subscribernotification

import com.springsecurity.User

abstract class Resource {

    String description
    User createdBy
    Topic topic
    Date dateCreated
    Date lastUpdated
    static constraints = {

    }
    static mapping = {
        // tablePerHierarchy false
    //    tablePerSubclass(true)

    }
}
