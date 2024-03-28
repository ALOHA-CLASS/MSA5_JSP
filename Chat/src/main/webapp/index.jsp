<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>WebSocket 채팅</title>
    <script>
        var socket = new WebSocket("ws://192.168.30.119:8080/Chat/chatting");

        socket.onopen = function() {
            console.log("WebSocket 연결 성공.");
        };

        socket.onmessage = function(event) {
            console.log("메시지 수신: " + event.data);
            // 서버로부터 수신된 메시지 처리
            // 예를 들어, 수신된 메시지를 채팅 영역에 표시
            var chatArea = document.getElementById("chatArea");
            chatArea.innerHTML += "<div>" + event.data + "</div>";
            // 채팅 영역 스크롤 맨 아래로 이동
            chatArea.scrollTop = chatArea.scrollHeight;
        };

        socket.onclose = function() {
            console.log("WebSocket 연결 종료.");
        };

        // 메시지를 서버로 전송하는 함수
        function sendMessage() {
            var messageInput = document.getElementById("messageInput");
            var message = messageInput.value;
            var name = document.getElementById("name").value;
            
            if( name == '' ) {
            	alert('이름을 입력해주세요')
            	return
            }
            
            socket.send(name + " : " + message);
            // 메시지를 전송한 후 입력 필드를 지움
            messageInput.value = "";
            // 채팅 영역 스크롤 맨 아래로 이동
            var chatArea = document.getElementById("chatArea");
            chatArea.scrollTop = chatArea.scrollHeight;
        }

        // 엔터 키 누를 때 sendMessage 함수 호출
        function handleKeyPress(event) {
            if (event.keyCode === 13) {
                sendMessage();
            }
        }
    </script>
</head>
<body>

    <div id="chatArea" style="height: 200px; overflow-y: scroll;"></div>
    <input type="text" id="name" name="name" placeholder="이름"/> <br>
    <input type="text" id="messageInput" placeholder="메시지를 입력하세요." onkeypress="handleKeyPress(event)">
    <button onclick="sendMessage()">보내기</button>
</body>
</html>





