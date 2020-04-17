package com.subscribernotification

import co.SignUpCO
import com.springsecurity.Role
import com.springsecurity.User
import grails.transaction.Transactional

@Transactional
class LoginService {

    def signUpSave(SignUpCO signUpCO) {
        User user = new User()
        user.firstname=signUpCO.firstname
        user.lastname=signUpCO.lastname
        user.password = signUpCO.password
        user.username = signUpCO.username
        user.save(flush: true)


    }

}
