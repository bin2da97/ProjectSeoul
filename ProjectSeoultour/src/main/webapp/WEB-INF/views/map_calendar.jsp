<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Calendar 01</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<script
	src="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.2.0/main.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@4.2.0/main.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@fullcalendar/interaction@4.2.0/main.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://d3js.org/d3.v6.min.js"></script>
<script src="https://d3js.org/topojson.v3.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/@fullcalendar/core@4.2.0/main.min.css"
	rel="stylesheet" />

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" />

<link rel="stylesheet"
	href="<c:url value="/resources/css/fontawesome.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/templatemo-villa-agency.css" />" />
<link rel="stylesheet" href="<c:url value="/resources/css/owl.css" />" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/animate.css" />" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<style>
	/* styles.css */
	/* .flex { */
	/* 	display: flex; */
	/* } */
	/* #calendar { */
	/* 	width: 30%; */
	/* 	height: 300px; */
	/* } */
	.content {
		width: 100%;
		height: 100%;
		text-align: center;
		position: relative;
		z-index: 1;
	}
	
	.content::after {
		width: 100%;
		height: 100%;
		content: "";
		background:
			url(https://cdn.pixabay.com/photo/2017/12/18/18/37/christmas-3026685_1280.jpg);
		position: absolute;
		top: 0;
		left: 0;
		z-index: -1;
		opacity: 0.3;
	}
	
	.highlight {
		background-color: red;
		opacity: 0.5;
		position: relative;
		z-index: 2
	}
	
	.tooltip {
		position: absolute;
		text-align: center;
		width: 100px;
		height: 80px;
		padding: 2px;
		font: 13px sans-serif;
		background: lightsteelblue;
		border: 0px;
		border-radius: 8px;
		pointer-events: none;
	}
	/* Flexbox를 사용하여 열 배치 */
	.container {
		display: flex;
	}
	
	/* 각각의 열 요소 */
	#calendar, #calendarList {
		width: 50%; /* 2개의 열을 반씩 차지하도록 설정 */
		padding: 20px;
		box-sizing: border-box;
		/* 	border: 1px solid #ccc; */
		padding: 20px;
	}
	
	.fc-left h2 {
		font-size: 15px;
	}
	
	#calendar {
		width: 400px;
		font-size: 10pxs
	}
	
	#mapClick, #hideList {
		width: 50%; /* 2개의 열을 반씩 차지하도록 설정 */
		padding: 20px;
		box-sizing: border-box;
		border: 1px solid #ccc;
		padding: 20px;
	}
	
	.fc-button {
		font-size: 13px;
		margin-left: 10px
	}
	
	.fc table {
		font-size: 13px;
	}
</style>

<script>
      document.addEventListener("DOMContentLoaded", function () {
        var calendarEl = document.getElementById("calendar");

        var calendar = new FullCalendar.Calendar(calendarEl, {
          height: 330,
          plugins: ["dayGrid", "interaction"],
          defaultView: "dayGridMonth", // 기본적으로 월간 뷰로 설정
          fixedWeekCount: true,

          dateClick: function (info) {
            console.log(info.date);
            $(".fc-day").removeClass("highlight"); // 기존 강조 표시를 모두 제거
            $(info.dayEl).addClass("highlight");
            $("#calendarList table tbody").empty();
            //             console.log(info)
            function ajax() {
              // console.log("ajax 호출 ");
              $.ajax({
                url: "calendar2",
                //                 data: ,
                type: "get",
                success: function (data) {
                  console.log("성공");
                  var cnt = 1;
                  if (data.eventList.length == 0) {
                    $("#calendarList table tbody").append(
                      "<tr><th>" +
                        cnt +
                        "</th><td>" +
                        info.dateStr +
                        " 행사일정 없음" +
                        "</td></tr>"
                    );
                  } else {
                    data.eventList.forEach(function (d) {
                      var startday_start_index = d.indexOf("날짜: ") + 4;
                      var startday_end_index = startday_start_index + 10;
                      var endday_start_index = startday_end_index + 1;
                      var endday_end_index = endday_start_index + 10;
                      var event_start_date = new Date(
                        d.substring(startday_start_index, startday_end_index)
                      );

                      var event_end_date = new Date(
                        d.substring(endday_start_index, endday_end_index)
                      );
                      console.log(event_start_date)
                      if (
                        info.date >= event_start_date &&
                        info.date <= event_end_date
                      ) {
                        $("#calendarList table tbody").append(
                          "<tr><th>" + cnt + "</th><td>" + d + "</td></tr>"
                        );
                        cnt++;
                      }
                    });
                  }
                },
                error: function () {
                  alert("에러");
                },
              });
            }
            $(document).ready(function () {
              ajax();
            });

            calendar.refetchEvents();
          },
        });

        calendar.render();
      });
    </script>
</head>

<body>


	
							
							<!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <nav class="main-nav">
              <!-- ***** Logo Start ***** -->
 
              <a href="main" class="logo" style="margin-left:10px">			             
                <h1>Seoul</h1>
              </a>
              <div style='position: relative;  size:60%'>
			            <img src='/resources/images/003.png'>
			        </div>
							
			              	<!-- ***** Menu Start ***** -->
			             	 <ul class="nav" style="margin-left:500px"/>
			            		
								<li><a href="/seoul/main">메인</a></li>
								<li><a href="/seoul/event" class="active">행사/맛집</a></li>
								<li><a href="/seoul/recommend">추천일정</a></li>
								<li><a href="/board/list">게시판</a></li>
								<c:choose>
							    <c:when test="${not empty user}">
							        <li><a href="/seoul/login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.name_}&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							    </c:when>
							    <c:otherwise>
							        <li><a href="/seoul/login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그인&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							    </c:otherwise>
								</c:choose>
		
							</ul>
						<a class="menu-trigger"> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>

	<div class="content">
		<div class="container">
			<div id="calendar" class="box" style="margin: 50px"></div>

			<div id="calendarList" class="box"
				style="overflow: auto; height: 400px; margin-top: 50px;">
				<table class="table table-bordered table-hover">
					<thead style="text-align: center">
						<tr>
							<th colspan="4">행사일정</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>
		</div>
		<div class="container">
			<div id="mapClick" class="box" style="margin: 50px;"></div>
			<div id="hideList" class="box"
				style="height: 330px; margin-top: 55px">
				<span> <select id="eventorfood" style="text-align: center">
						<option value="eventList">행사 리스트</option>
						<option value="localFoodList">맛집 리스트</option>
				</select>
				</span>
				<div id="eventList" style="overflow: scroll; height: 300px">
					<table class="table table-bordered table-hover">
						<thead style="text-align: center">
							<tr>
								<th colspan="4">행사일정</th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
				<div id="localFoodList"
					style="overflow: scroll; height: 300px; display: none">
					<table class="table table-bordered table-hover">
						<thead style="text-align: center">
							<tr>
								<th colspan="4"></th>
							</tr>
						</thead>
						<tbody></tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
	<script>
      $("#eventorfood").change(function () {
        const selectedListId = $(this).val();
        console.log(selectedListId);
        $("#hideList div").hide();

        $("#" + selectedListId).show();
      });
    </script>
	<script>
      const mapDataUrl =
        "https://raw.githubusercontent.com/southkorea/seoul-maps/master/kostat/2013/json/seoul_municipalities_geo_simple.json";

      const width = 550;
      const height = 300;

      const tooltip = d3
        .select("body")
        .append("div")
        .attr("class", "tooltip")
        .style("opacity", 0);

      const svg = d3
        .select("#mapClick")
        .append("svg")
        .attr("width", width)
        .attr("height", height);

      d3.json(mapDataUrl).then(function (mapData) {
        const projection = d3.geoMercator().fitSize([width, height], mapData);

        const path = d3.geoPath().projection(projection);
        svg
          .selectAll("path")
          .data(mapData.features)
          .enter()
          .append("path")
          .attr("d", path)
          .style("fill", "lightgray")
          // .style("opacity", 0.1)
          .style("stroke", "white")
          .on("click", (event, d) => {
            const selectedRegion = d.properties.name;
            console.log(selectedRegion);
            $("#eventList table tbody").empty();
            $("#localFoodList table tbody").empty();
            $("#localFoodList table thead tr th").empty();
            function ajax() {
              console.log("ajax 호출 ");
              $.ajax({
                url: "mapevent2",
                data: "selectedRegion=" + selectedRegion,
                type: "get",
                success: function (data) {
                  console.log("성공");
                  var cnt = 1;
                  var cnt2 = 1;
                  console.log(data.eventList.length);
                  if (data.eventList.length == 0) {
                    $("#eventList table tbody").append(
                      "<tr><th>" +
                        cnt +
                        "</th><td>" +
                        selectedRegion +
                        " 행사일정 없음" +
                        "</td></tr>"
                    );
                  } else {
                    data.eventList.forEach(function (d) {
                      $("#eventList table tbody").append(
                        "<tr><th>" + cnt + "</th><td>" + d + "</td></tr>"
                      );
                      cnt++;
                    });
                  }

                  data.localFoodList.forEach(function (d) {
                    $("#localFoodList table tbody").append(
                      "<tr><th>" + cnt2 + "</th><td>" + d + "</td></tr>"
                    );
                    cnt2++;
                  });
                  $("#localFoodList table thead tr th").append(
                    '<a href="' +
                      data.localFoodLinkList +
                      '" target="_blank">' +
                      selectedRegion +
                      "맛집" +
                      "</a>"
                  );
                },
                error: function () {
                  alert("에러");
                },
              });
            }
            d3.select(event.currentTarget).raise().style("stroke", "black");

            $(document).ready(function () {
              ajax();
            });

            svg
              .selectAll("text")
              .raise()
              .data(mapData.features)
              .enter()
              .append("text")
              .attr("transform", function (d) {
                return "translate(" + path.centroid(d) + ")";
              })
              .attr("dy", ".5em")
              .attr("font-size", "0.8rem")
              .style("text-anchor", "middle")
              .text(function (d) {
                return d.properties.name; // 지역 이름을 가져와 표시
              });
          })
          .on("mouseout", (event, d) => {
            tooltip.transition().duration(500).style("opacity", 0);

            svg.selectAll("path").style("stroke", "white");
          });

        svg
          .selectAll("text")
          .data(mapData.features)
          .enter()
          .append("text")
          .attr("transform", function (d) {
            return "translate(" + path.centroid(d) + ")";
          })
          .attr("dy", ".5em")
          .attr("font-size", "0.8rem")
          .style("text-anchor", "middle")
          .text(function (d) {
            return d.properties.name; // 지역 이름을 가져와 표시
          });
      });
    </script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/isotope.min.js"></script>
	<script src="/resources/js/owl-carousel.js"></script>
	<script src="/resources/js/counter.js"></script>
	<script src="/resources/js/custom.js"></script>

</body>
</html>
