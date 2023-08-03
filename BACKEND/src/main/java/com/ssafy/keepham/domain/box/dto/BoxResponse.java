package com.ssafy.keepham.domain.box.dto;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoxResponse {
    private long boxId;
    //키값

    private String status;
    //상태 => 정상, 고장, 수리중

    private String type;
    //유형 => 공용, 개인

    private boolean isValid;
    //삭제된것인가 => true(삭제된 상태), false(삭제 되지 않은 상태)

    private String address;
    //도로명*지번 주소

    private String detailedAddress;
    // 상세 주소

    private long jibunId;
    //지번id

    private long chatRoomId;
    //점유된 체팅방 id
}
