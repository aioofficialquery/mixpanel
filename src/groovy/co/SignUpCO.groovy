package co

import com.springsecurity.User
import grails.validation.Validateable

/**
 * Created by prashant on 7/6/16.
 */
@Validateable
class SignUpCO {
    String firstname
    String lastname
    String username
    String password
    String comfirmpassword

    static constraints = {
        firstname blank: false
        lastname blank: false
        password size: 5..15, blank: false, validator: { val, obj ->
            if (!(val.equals(obj.comfirmpassword))) {
                return 'signUpCO.password.exception'
            }
        }
    }
}
