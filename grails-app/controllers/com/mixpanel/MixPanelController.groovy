package com.mixpanel

import com.springsecurity.User
import com.sun.xml.internal.org.jvnet.staxex.Base64Encoder
import grails.converters.JSON
import groovy.json.JsonSlurper
import mixpanel.EventDetailDTO
import mixpanel.MixPanel
import org.apache.commons.codec.binary.Base64
import org.codehaus.groovy.grails.web.json.JSONElement
import org.codehaus.groovy.grails.web.json.JSONObject
import org.springframework.security.access.annotation.Secured

import java.text.SimpleDateFormat

@Secured('permitAll')
class MixPanelController {


    def springSecurityService
    def index() {
        redirect( action: "dashboard" )
    }

    def page1(){

        User user=  springSecurityService.currentUser
        render(view: "/mixPanel/page1",  model:[user:user])
    }
    def page2(){
        User user=  springSecurityService.currentUser
        render(view: "/mixPanel/page2" ,  model:[user:user])
    }

    def fetchRecord(){
        String webPage=MixPanel.basicRestCall("https://mixpanel.com/api/2.0/engage")
        JSONObject obj = new JSONObject(webPage);
        webPage=MixPanel.basicRestCall('https://data.mixpanel.com/api/2.0/export/?from_date='+MixPanel.changeDateFormat(params.fromDate)+'&to_date='+MixPanel.changeDateFormat(params.toDate)+'&event=["'+params.event+'"]')
        String [] webPageArray=webPage.split("}}")
        List<String> eventStringList=[]
        String str=null
        webPageArray.each {println it=it.replaceAll("\n","")
            if(it!=null  && it.size()>0){
                str=it+"}}"
                eventStringList.add(str)
            }


        }
        JSONObject eventObj = new JSONObject(webPage);
        List eventList=[]
        eventStringList.each {
            println it
            EventDetailDTO eventDetailDTO=new EventDetailDTO()
            eventObj= new JSONObject(it)
            eventDetailDTO.eventType=eventObj.event
            eventDetailDTO.eventId=eventObj.properties.id
            eventDetailDTO.firstName=eventObj.properties.first_name
            eventDetailDTO.lastName=eventObj.properties.last_name
            eventDetailDTO.userId=eventObj.properties.userId
            eventDetailDTO.userEmailId=eventObj.properties.email
            eventList.add(eventDetailDTO)

        }
        println eventList.size()
        def userList = new JsonSlurper().parseText(obj.getString("results"))
        render (view: '/login/dashboard', model:[totalUser:obj.getString("total"),userList:userList, eventList:eventList, eventType:params.event, eventSize:eventList.size()])
    }

    def dashboard() {
        String webPage=MixPanel.basicRestCall("https://mixpanel.com/api/2.0/engage")
        JSONObject obj = new JSONObject(webPage)
        println ""+obj.getString("results")
        String eventType="click nav a link"
        def userList = new JsonSlurper().parseText( obj.getString("results") )
        userList.each {println it}
        User user=  springSecurityService.currentUser
        webPage=MixPanel.basicRestCall('https://data.mixpanel.com/api/2.0/export/?from_date=2016-09-14&to_date=2016-9-15')

        String [] webPageArray=webPage.split("}}")
        List<String> eventStringList=[]
        String str=null
        webPageArray.each {
            it=it.replaceAll("\n","")
            if(it!=null  && it.size()>0){
                str=it+"}}"
                eventStringList.add(str)
            }
        }
        JSONObject eventObj = new JSONObject(webPage);
        List eventList=[]
        eventStringList.each {
            EventDetailDTO eventDetailDTO=new EventDetailDTO()
            eventObj= new JSONObject(it)
            eventDetailDTO.eventType=eventObj.event
            eventDetailDTO.eventId=eventObj.properties.id
            eventDetailDTO.firstName=eventObj.properties.first_name
            eventDetailDTO.lastName=eventObj.properties.last_name
            eventDetailDTO.userId=eventObj.properties.userId
            eventDetailDTO.userEmailId=eventObj.properties.email
            eventList.add(eventDetailDTO)
        }
        render (view: '/login/dashboard', model:[totalUser:obj.getString("total"), userList:userList, user: user,eventList:eventList, eventType:"All Event", eventSize:eventList.size()])
    }


    def fetchByEmailIdRecord(){
        String emailId="prashant@gmail.com"
        String   webPage=MixPanel.basicRestCall('https://data.mixpanel.com/api/2.0/export/?from_date=2016-09-14&to_date=2016-9-15&event=["page view"]&where=properties["email"]=="'+emailId+'"')
        println ""+webPage
        render (view: "/mixPanel/page1")
    }

}

