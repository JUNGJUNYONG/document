package com.douzone.codingvirus19.service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.EventListener;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.messaging.SessionConnectedEvent;

@Service
public class StompListener {
	
	private static final Logger logger = LoggerFactory.getLogger(StompListener.class);

	@Autowired
    private SimpMessageSendingOperations template;
	
	@EventListener
    public void handleWebSocketConnectListener(SessionConnectedEvent event){

		
        logger.info("Received a new web socket connection");
        
        
    }
	

}
