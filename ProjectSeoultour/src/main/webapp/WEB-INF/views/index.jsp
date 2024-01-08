<!doctype html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <head>
  	<title>Calendar 01</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.2.0/main.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@4.2.0/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/interaction@4.2.0/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.js" ></script>
	<link href="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.2.0/main.min.css" rel="stylesheet"/>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
	/* styles.css */
	.card {
	    width: 10rem;
	    /* 다른 카드 스타일을 여기에 추가할 수 있습니다 */
	    display:table;
	    position:relative;
	    width:100%;
	    height:200px;
	}
	.section-event-calendar *,
	.section-event-calendar *:before,
	.section-event-calendar *:after {
	    /* 캘린더 스타일을 여기에 추가할 수 있습니다 */
	    -webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		-o-box-sizing: border-box;
		box-sizing: border-box;
	}
	.section-event-calendar {
		overflow:hidden;
		position: relative;
		margin: 10px auto 0;
		width: 100%;
		max-width: 1200px;
	}
	.card-body{
		position: relative;
		border-radius: 5px;
		border: 1px solid ;
	}
	.bottomleft {
  		position: absolute;
	  	bottom: 8px;
	  	left: 16px;
	  	font-size: 18px;
	}
</style>

<script>

var eventsArray = [
    {
      title  : 'event1',
      start  : '2019-07-20'
    },
    {
      title  : 'event2',
      start  : '2019-08-05',
      end    : '2019-08-07'
    },
    {
      title  : 'event3',
      start  : '2019-09-03'
    },
    {
      title  : 'event3',
      start  : '2019-10-05'
    }
  ];

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
        height: 600,
        plugins: [ 'dayGrid', 'interaction' ],
        
        dateClick: function(info) { //날짜를 클릭하는 이벤트 발생하면 
            alert('Clicked on: ' + info.dateStr);
          
          eventsArray.push({
            date: info.dateStr,
            title: "test event added from click"
          }); //여기에 추가 
          
          calendar.refetchEvents();
        },
      
        eventClick: function(info) {
        	console.log(info)
          $(".card-text").html("i love you.")
        },
      
        events: function(info, successCallback, failureCallback) {
        	console.log("events:",info)
          successCallback(eventsArray);
        }
    });

    calendar.render();
  });
</script>
</head>

<body>
<section class="section-event-calendar" data-event-cal="eventCal1">

	<div id="calendar" style="flex: 0 50 100px; margin-right: 20px; margin-top:230px "></div> 
  		  <div class="card">	            
	         <div class="card-body">
      			<h5 class="card-title"><strong>행사 일정</strong></h5>
      				<p class="card-text">
      					<c:forEach items="${list}" var="i">
				            <c:out value="${i.codename}"/>
				            <c:out value="${i.translated_date}"/>
				            <c:out value="${i.translated_title}"/>
				            <c:out value="${i.translated_guname}"/>
				            <c:out value="${i.translated_place}"/>
				            <hr/>
				            <fmt:parseDate value="${i.translated_startDate}" var="parsedStartDate" pattern="yyyy-MM-dd"/>
							<fmt:formatDate value="${parsedStartDate}" pattern="yyyy-MM-dd"/>
				     	</c:forEach>
      				</p>
      					<a href="#" class="btn btn-primary">Go somewhere</a>
		   	</div>
	  	</div>
	</body>

</section>	
</html>

