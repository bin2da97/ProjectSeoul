package com.seoul.tour.vo;

import java.util.List;


import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class BoardVO {
   private Long bno;
   private String writer;
   private String title;
   private String content;
   private String reg_date;
//   private List<String> boardList;
   private List<AttachFileVO> attachList;

}
