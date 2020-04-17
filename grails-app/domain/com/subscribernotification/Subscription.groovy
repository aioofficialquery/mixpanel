package com.subscribernotification

import com.linksharing.enums.Seriousness
import com.springsecurity.User

class Subscription {


    Date dateCreated
    Topic topic
    User user

    Seriousness seriousness
    static constraints = {
    }
}
