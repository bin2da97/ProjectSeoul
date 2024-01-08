<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>좌표로 주소를 얻어내기</title>
<style>
.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

.title {
	font-weight: bold;
	display: block;
}

.hAddr {
	position: absolute;
	left: 10px;
	top: 10px;
	border-radius: 2px;
	background: #fff;
	background: rgba(255, 255, 255, 0.8);
	z-index: 1;
	padding: 5px;
}

#centerAddr {
	display: block;
	margin-top: 2px;
	font-weight: normal;
}

.bAddr {
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
</style>
</head>
<body>
	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: right; overflow: hidden"></div>
		<div class="hAddr">
			<span class="title">지도중심기준 행정동 주소정보</span> <span id="centerAddr"></span>
		</div>
	</div>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=869d4d21a46665a626649520ff39f198&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById("map"), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(37.54518862038375, 126.99636480411209), // 지도의 중심좌표
			level : 8, // 지도의 확대 레벨
		};

		// 지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
		infowindow = new kakao.maps.InfoWindow({
			zindex : 1
		}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

		// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);

		// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
		kakao.maps.event.addListener(map, "click", function(mouseEvent) {
			searchDetailAddrFromCoords(mouseEvent.latLng, function(result,
					status) {
				if (status === kakao.maps.services.Status.OK) {
					var detailAddr = !!result[0].road_address ? "<div>도로명주소 : "
							+ result[0].road_address.address_name + "</div>"
							: "";
					detailAddr += "<div>지번 주소 : "
							+ result[0].address.address_name + "</div>";

					var content = '<div class="bAddr">'
							+ '<span class="title">주소</span>' + detailAddr
							+ "</div>";

					// 마커를 클릭한 위치에 표시합니다
					marker.setPosition(mouseEvent.latLng);
					marker.setMap(map);

					// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
					infowindow.setContent(content);
					infowindow.open(map, marker);
				}
			});
		});

		// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
		kakao.maps.event.addListener(map, "idle", function() {
			searchAddrFromCoords(map.getCenter(), displayCenterInfo);
		});

		function searchAddrFromCoords(coords, callback) {
			// 좌표로 행정동 주소 정보를 요청합니다
			geocoder.coord2RegionCode(coords.getLng(), coords.getLat(),
					callback);
		}

		function searchDetailAddrFromCoords(coords, callback) {
			// 좌표로 법정동 상세 주소 정보를 요청합니다
			geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
		}

		// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
		function displayCenterInfo(result, status) {
			if (status === kakao.maps.services.Status.OK) {
				var infoDiv = document.getElementById("centerAddr");

				for (var i = 0; i < result.length; i++) {
					// 행정동의 region_type 값은 'H' 이므로
					if (result[i].region_type === "H") {
						infoDiv.innerHTML = result[i].address_name;
						break;
					}
				}
			}
		}
		var imageSrc = "/resources/images/000.png", // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(44, 49), // 마커이미지의 크기입니다
		imageOption = {
			offset : new kakao.maps.Point(27, 69)
		};
		// 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
		// 마커 이미지 생성
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
		
		// 신세계 백화점 본점
		
		var markerPosition_1_1= new kakao.maps.LatLng(37.560950121730535, 126.98108734104446);

		// 마커를 생성합니다
		var marker_1_1 = new kakao.maps.Marker({
			position : markerPosition_1_1,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_1_1.setMap(map)
		
		// 명동성당
		var markerPosition_1_2= new kakao.maps.LatLng(37.56312235784322, 126.98732328360751);

		// 마커를 생성합니다
		var marker_1_2 = new kakao.maps.Marker({
			position : markerPosition_1_2,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_1_2.setMap(map)
		
		//더현대 서울
		var markerPosition_1_3= new kakao.maps.LatLng(37.525885556912144, 126.92839803154929);

		// 마커를 생성합니다
		var marker_1_3 = new kakao.maps.Marker({
			position : markerPosition_1_3,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_1_3.setMap(map)
		
		//그랜드 인터컨티넨탈
		var markerPosition_1_4= new kakao.maps.LatLng(37.50928835792379, 127.06082995831844);

		// 마커를 생성합니다
		var marker_1_4 = new kakao.maps.Marker({
			position : markerPosition_1_4,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_1_4.setMap(map)
		
		// 롯데월드
		var markerPosition_2_1 = new kakao.maps.LatLng(37.51112, 127.095973);

		// 마커를 생성합니다
		var marker_2_1 = new kakao.maps.Marker({
			position : markerPosition_2_1,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_2_1.setMap(map)
		
		// 잠실 롯데월드 타워
		var markerPosition_2_2 = new kakao.maps.LatLng(37.51308113151252 , 127.10356291163328);

		// 마커를 생성합니다
		var marker_2_2 = new kakao.maps.Marker({
			position : markerPosition_2_2,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_2_2.setMap(map)
		
		// 영등포 타임스퀘어
		var markerPosition_2_3 = new kakao.maps.LatLng(37.516979125033885 , 126.90310549822725);

		// 마커를 생성합니다
		var marker_2_3 = new kakao.maps.Marker({
			position : markerPosition_2_3,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_2_3.setMap(map)
		
		// 코엑스 별마당 도서관
		var markerPosition_2_4 = new kakao.maps.LatLng(37.51194944652915 , 127.05911005421136);

		// 마커를 생성합니다
		var marker_2_4 = new kakao.maps.Marker({
			position : markerPosition_2_4,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_2_4.setMap(map)
		
		//종로 광화문 광장
		var markerPosition_3_1= new kakao.maps.LatLng(37.5725879904076 , 126.97689602473284);

		// 마커를 생성합니다
		var marker_3_1 = new kakao.maps.Marker({
			position : markerPosition_3_1,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_3_1.setMap(map)
		
		//광화문 청계천 빛초롱 축제
		var markerPosition_3_2= new kakao.maps.LatLng(37.56963720252926 , 127.00294589533951);

		// 마커를 생성합니다
		var marker_3_2 = new kakao.maps.Marker({
			position : markerPosition_3_2,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_3_2.setMap(map)
		
		//동대문 ddp
		var markerPosition_3_3= new kakao.maps.LatLng(37.56732105456212 , 127.01215674782765);

		// 마커를 생성합니다
		var marker_3_3 = new kakao.maps.Marker({
			position : markerPosition_3_3,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_3_3.setMap(map)
		
		//그랜드하얏트
		var markerPosition_3_4= new kakao.maps.LatLng(37.539447019891504 , 126.9970779226507);

		// 마커를 생성합니다
		var marker_3_4 = new kakao.maps.Marker({
			position : markerPosition_3_4,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_3_4.setMap(map)
		
		//디올 성수
		var markerPosition_4_1= new kakao.maps.LatLng(37.54401472721892, 127.05247612757366);

		// 마커를 생성합니다
		var marker_4_1 = new kakao.maps.Marker({
			position : markerPosition_4_1,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_4_1.setMap(map)
		
		//용산어린이정원
		var markerPosition_4_2= new kakao.maps.LatLng(37.527347977490685, 126.97276656580651);

		// 마커를 생성합니다
		var marker_4_2 = new kakao.maps.Marker({
			position : markerPosition_4_2,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_4_2.setMap(map)
		
		//서촌 제이닷트리 트리 팝업
		var markerPosition_4_3= new kakao.maps.LatLng(37.572882130912724, 126.96413266397755);

		// 마커를 생성합니다
		var marker_4_3 = new kakao.maps.Marker({
			position : markerPosition_4_3,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_4_3.setMap(map)
		
		//남산타워
		var markerPosition_4_4= new kakao.maps.LatLng(37.551206760049745, 126.98821649170692);

		// 마커를 생성합니다
		var marker_4_4 = new kakao.maps.Marker({
			position : markerPosition_4_4,
			image: markerImage
		});
		// 마커가 지도 위에 표시되도록 설정합니다
		marker_4_4.setMap(map)
	</script>
</body>
</html>
