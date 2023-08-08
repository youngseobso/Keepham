package com.ssafy.keepham.domain.chatroom.repository;

import com.ssafy.keepham.domain.box.entity.Box;
import com.ssafy.keepham.domain.chatroom.entity.ChatRoomEntity;
import com.ssafy.keepham.domain.chatroom.entity.enums.ChatRoomStatus;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ChatRoomRepository extends JpaRepository<ChatRoomEntity, Long> {
    Page<ChatRoomEntity> findAllByStatusOrderByCreatedAtDesc(ChatRoomStatus status, Pageable pageable);
    Page<ChatRoomEntity> findAllByStatusAndBoxOrderByCreatedAtDesc(ChatRoomStatus status, Box box, Pageable pageable);
    Page<ChatRoomEntity> findAllByStatusAndBox_ZipCodeOrderByCreatedAtDesc(ChatRoomStatus status, String zipCode, Pageable pageable);

    ChatRoomEntity findFirstByStatusAndBox(ChatRoomStatus status, Box box);
    ChatRoomEntity findFirstByIdAndStatus(Long id, ChatRoomStatus status);
    ChatRoomEntity findByBoxIdAndStatus(Long boxId, ChatRoomStatus status);

}
