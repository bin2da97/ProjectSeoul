<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- D3.js 및 TopoJSON 라이브러리 추가 -->
    <script src="https://d3js.org/d3.v6.min.js"></script>
    <script src="https://d3js.org/topojson.v3.min.js"></script>
    <script
      src="https://code.jquery.com/jquery-3.7.1.js"
      integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
      crossorigin="anonymous"
    ></script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
    <style>
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
    </style>
  </head>
  <body>
    <div id="mapClick"></div>
    <script>
      const mapDataUrl =
        "https://raw.githubusercontent.com/southkorea/seoul-maps/master/kostat/2013/json/seoul_municipalities_geo_simple.json";

      const width = 800;
      const height = 600;

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
    <div id="localFoodList" style="overflow: scroll; height: 300px">
      <table class="table table-bordered table-hover">
        <thead style="text-align: center">
          <tr>
            <th colspan="4"></th>
          </tr>
        </thead>
        <tbody></tbody>
      </table>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
