package socket;

import java.io.IOException;

import jakarta.websocket.OnClose;
import jakarta.websocket.OnMessage;
import jakarta.websocket.OnOpen;
import jakarta.websocket.Session;
import jakarta.websocket.server.ServerEndpoint;

@ServerEndpoint("/chatting")
public class WebSocket {

	@OnOpen
    public void onOpen(Session session) {
        System.out.println("WebSocket가 열렸습니다: " + session.getId());
    }

    @OnMessage
    public void onMessage(String message, Session session) {
        System.out.println("받은 메시지: " + message);
        try {
            // 현재 연결된 모든 클라이언트에게 메시지를 브로드캐스트
            for (Session clientSession : session.getOpenSessions()) {
                clientSession.getBasicRemote().sendText(message);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @OnClose
    public void onClose(Session session) {
        System.out.println("WebSocket가 닫혔습니다: " + session.getId());
    }
}
