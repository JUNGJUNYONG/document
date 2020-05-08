package com.douzone.codingvirus19.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.RestController;

import com.douzone.codingvirus19.service.StompListener;
import com.douzone.codingvirus19.vo.ChatMessageVo;


@RestController
public class ChatController {

	@Autowired
    private StompListener stompListener;
	
	@Autowired
	private SimpMessagingTemplate webSocket;
	
//	@RequestMapping({"/chat"})
//	public String index(Model model) {
//		return "main/chat";
//	}
	
	@MessageMapping("/message")
	@SendTo("192.168.1.27:8080/codingvirus19/topic/testchat")
	public void sendMessage(ChatMessageVo message) throws Exception{
		System.out.println(message.getGroup_no());
		System.out.println(message.getUser());
		System.out.println(message.getMessage());
		System.out.println("웹 소켓 controller 들어 왔습니다.");
		
		webSocket.convertAndSend("/topic/testchat", message);
	}
}
