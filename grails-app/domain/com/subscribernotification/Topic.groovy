package com.subscribernotification

import com.linksharing.enums.Visibility
import com.springsecurity.User

class Topic {

    String name
    User createdBy
    Date dateCreated
    Date lastUpdated

    Visibility visibility
    static constraints = {
        name blank: false
        visibility blank : false
    }
}
