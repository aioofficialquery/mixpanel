<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Page Title</title>
</head>
<body>

<h1>Page 1</h1>
<br>
<br>
<br>
<br>
<h4>Event Link</h4>
<div class="row">
    <div class="col-md-12">
        <div id="nav">
            <a href="${createLink(controller: 'mixPanel', action: "dashboard")}" id="Dashboard">Dashboard</a> |
            <a href="${createLink(controller: 'mixPanel', action: "page1")}" id="Page1">Page 1</a> |
            <a href="${createLink(controller: 'mixPanel', action: "page2")}" id="Page2">Page 2</a> |
        </div>
    </div>
</div>
<br>
<br>
<br>
<br>
<h4>Event Button</h4>
<div class="row">
    <div class="col-md-12">
        <form action="#" method="get" id="form1">
            First name: <input type="text" class="form-group" name="fname"><br>
        </form>
    </div>
</div>
<button type="submit" class="btn-success" form="form1" value="Submit">Submit</button>
<script type="text/javascript">
    mixpanel.track("page event", {
        "id": "page1",
        "userId":"${user?.id}",
        "first_name": "${user?.firstname}",
        "last_name": "${user?.lastname}",
        "email": "${user?.username}"
    });
    $( "#form1" ).submit(function( event ) {
        debugger;
        mixpanel.track("button event", {
            "id": "page1 button1",
            "userId":"${user?.id}",
            "first_name": "${user?.firstname}",
            "last_name": "${user?.lastname}",
            "email": "${user?.username}"
        });
    });
    mixpanel.track_links("#Dashboard", "link event", {
        id:"page1 Dashboard",
        "userId":"${user?.id}",
        "first_name": "${user?.firstname}",
        "last_name": "${user?.lastname}",
        "email": "${user?.username}"
    });
    mixpanel.track_links("#Page1", "link event", {
        id:"page1 Page1",
        "userId":"${user?.id}",
        "first_name": "${user?.firstname}",
        "last_name": "${user?.lastname}",
        "email": "${user?.username}"
    });
    mixpanel.track_links("#Page2", "link event", {
        id:"page1 Page2",
        "userId":"${user?.id}",
        "first_name": "${user?.firstname}",
        "last_name": "${user?.lastname}",
        "email": "${user?.username}"
    });

</script>

</body>

<script type="text/javascript">
    mixpanel.track("page view", {
        "id": "page1"
    });
</script>
</html>