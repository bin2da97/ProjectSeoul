<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- calendar를 위한 라이브러리들 지우면 안됨 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src='https://fullcalendar.io/releases/fullcalendar/3.9.0/lib/moment.min.js'></script>
<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css'rel='stylesheet'/>
<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css' rel='stylesheet' media='print'/>
<script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.9/index.global.min.js'></script>
    <script>
      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });

    </script>
    
    
    
    <style>
	    .event-calendar {
    		margin: 20px;
    	}
    	
    	.dot {
		  height: 8px;
		  width: 8px;
		  background-color: #f87171;
		  border-radius: 50%;
		  display: flex;
		  margin-left: 1px;
		}
    </style>
    
    <div class="event-calendar"  id="calendar">
		<div class="calendar-cont" >
			<div class="inner-cont">
				<div class="cont-head">
					<strong>행사일정</strong>
				</div>
				<div class="cont-body">
					<div id="simpleCalendar" class="simple-calendar js-simple-calendar">
						<div class="calendar">
							<header>
								<h2 class="month" data-year="2023" data-month="11">11 <div class="year">2023. </div></h2>
								<a class="simple-calendar-btn btn-prev" href="javascript:void(0);"><em class="blind">이전달 행사 조회</em></a>
								<a class="simple-calendar-btn btn-next" href="javascript:void(0);"><em class="blind">다음달 행사 조회</em></a>
							</header>
								<table>
									<caption>행사일정캘린더 : 전체, 축제&amp;행사, 전시&amp;공연</caption>
										<thead>
											<th scope="col" class="c-sunday">sun</th>
											<th scope="col">mon</th>
											<th scope="col">tue</th>
											<th scope="col">wed</th>
											<th scope="col">thu</th>
											<th scope="col">fri</th>
											<th scope="col">sat</th>
										</thead>
									<tbody>
										<tr>
											<td class="c-sunday">
												<div class="day wrong-month disabled" data-date="2023-10-28T15:00:00.000Z">
													<button type="button" tabindex="-1" disabled="disabled">29</button>
												</div>
											</td>
											<td>
												<div class="day wrong-month disabled" data-date="2023-10-29T15:00:00.000Z">
													<button type="button" tabindex="-1" disabled="disabled">30</button>
												</div>
											</td>
											<td>
												<div class="day wrong-month disabled" data-date="2023-10-30T15:00:00.000Z">
													<button type="button" tabindex="-1" disabled="disabled">31</button>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-10-31T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="1">1</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-01T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="2">2</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-02T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="3">3</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-03T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="4">4</button>
													<span class="event-bullet"><i class="ico-bullet c-eventCal3">
														<em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
										</tr>
										<tr>
											<td class="c-sunday">
												<div class="day disabled has-event" data-date="2023-11-04T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="5">5</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-05T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="6">6</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-06T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="7">7</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-07T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="8">8</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal2"><em class="blind">축제&amp;행사  행사일정</em></i>
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-08T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="9" class="">9</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal2"><em class="blind">축제&amp;행사  행사일정</em></i>
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-09T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="10">10</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal2"><em class="blind">축제&amp;행사  행사일정</em></i>
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-10T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="11">11</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal2"><em class="blind">축제&amp;행사  행사일정</em></i>
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
										</tr>
										<tr>
											<td class="c-sunday">
												<div class="day disabled has-event" data-date="2023-11-11T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="12">12</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-12T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="13">13</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-13T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="14">14</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-14T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="15">15</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-15T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="16">16</button>
													<span class="event-bullet">
														<i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>
													</span>
												</div>
											</td>
											<td>
												<div class="day disabled has-event" data-date="2023-11-16T15:00:00.000Z">
													<button type="button" onclick="onClickDayEvent(this)" data-day="17" class="active--focus">17</button>
													<span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-17T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="18">18</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td></tr><tr><td class="c-sunday"><div class="day disabled has-event" data-date="2023-11-18T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="19">19</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day today disabled has-event" data-date="2023-11-19T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="20">20</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-20T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="21" class="">21</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-21T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="22" class="">22</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-22T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="23">23</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-23T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="24" class="">24</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-24T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="25">25</button><span class="event-bullet"><i class="ico-bullet c-eventCal2"><em class="blind">축제&amp;행사  행사일정</em></i><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td></tr><tr><td class="c-sunday"><div class="day disabled has-event" data-date="2023-11-25T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="26">26</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-26T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="27">27</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-27T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="28" class="">28</button><span class="event-bullet"><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-28T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="29">29</button><span class="event-bullet"><i class="ico-bullet c-eventCal2"><em class="blind">축제&amp;행사  행사일정</em></i><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day disabled has-event" data-date="2023-11-29T15:00:00.000Z"><button type="button" onclick="onClickDayEvent(this)" data-day="30">30</button><span class="event-bullet"><i class="ico-bullet c-eventCal2"><em class="blind">축제&amp;행사  행사일정</em></i><i class="ico-bullet c-eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i></span></div></td><td><div class="day wrong-month disabled" data-date="2023-11-30T15:00:00.000Z"><button type="button" tabindex="-1" disabled="disabled">1</button></div></td><td><div class="day wrong-month disabled" data-date="2023-12-01T15:00:00.000Z"><button type="button" tabindex="-1" disabled="disabled">2</button></div></td></tr></tbody></table></div></div>
				</div>
			</div>
		</div>
		<div class="calendar-detail-cont">
			<div class="inner-cont">
				<div id="divDateTitle" class="cont-head">
					<strong>2023.11.17(금)</strong>
				</div>
				<div id="divEventList" class="cont-body"><ul>       <li>     <span class="title">                   <a href="/exhibition/TheShapeofTouch/KOPyfsp0k" title="행사 세부 정보로 이동">        <i class="bullet--eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>        손길모양</a>            </span>     <span class="date">2023-10-24 ~ 2024-05-05</span>    </li>       <li>     <span class="title">                   <a href="/exhibition/DaliTheEndlessEnigma/KOPrlt4bh" title="행사 세부 정보로 이동">        <i class="bullet--eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>        빛의 시어터 : 달리, 끝없는 수수께끼</a>            </span>     <span class="date">2023-06-15 ~ 2024-03-03</span>    </li>       <li>     <span class="title">                   <a href="/exhibition/THEHANGINGGARDENSOFBABYLON/KOP1zyxhn" title="행사 세부 정보로 이동">        <i class="bullet--eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>        공중정원</a>            </span>     <span class="date">2023-08-30 ~ 2023-11-19</span>    </li>       <li>     <span class="title">                   <a href="/exhibition/KwonJinKyusForeverHome/KOP8j7w39" title="행사 세부 정보로 이동">        <i class="bullet--eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>        권진규의 영원한 집</a>            </span>     <span class="date">2023-06-01 ~ 2024-08-31</span>    </li>       <li>     <span class="title">                   <a href="/exhibition/80UrbanReality/KOP5zna0p" title="행사 세부 정보로 이동">        <i class="bullet--eventCal3"><em class="blind">전시&amp;공연  행사일정</em></i>        가나아트 컬렉션 기획상설전 《80 도시현실》 </a>            </span>     <span class="date">2023-05-25 ~ 2023-12-31</span>    </li>      </ul></div>
			</div>
		</div>
	</div>

    

<body>
	
</body>
</html>