package com.seoul.tour.dto;

import java.util.List;

import lombok.Data;

@Data
public class Datalist {
    private List<String> eventList;
    private List<String> localFoodList;
    private String localFoodLinkList;
}
