<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Ŭ���� ��ġ�� ��Ŀ ǥ���ϱ�</title>
    
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>
<p><em>������ Ŭ�����ּ���!</em></p> 
<div id="clickLatlng"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f3d258ce936625da0436a6065893ce2d"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ , ����κ� �����ؼ� ���� �� ��ġ�� ǥ���ϰ� �ؾ���
        level: 3 // ������ Ȯ�� ����
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ������ Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
var marker = new kakao.maps.Marker({ 
    // ���� �߽���ǥ�� ��Ŀ�� �����մϴ� 
    position: map.getCenter() 
}); 
// ������ ��Ŀ�� ǥ���մϴ�
marker.setMap(map);

// ������ Ŭ�� �̺�Ʈ�� ����մϴ�
// ������ Ŭ���ϸ� ������ �Ķ���ͷ� �Ѿ�� �Լ��� ȣ���մϴ�
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // Ŭ���� ����, �浵 ������ �����ɴϴ� 
    var latlng = mouseEvent.latLng; 
    
    // ��Ŀ ��ġ�� Ŭ���� ��ġ�� �ű�ϴ�
    marker.setPosition(latlng);
    
    var message = 'Ŭ���� ��ġ�� ������ ' + latlng.getLat() + ' �̰�, ';
    message += '�浵�� ' + latlng.getLng() + ' �Դϴ�';
    
    var resultDiv = document.getElementById('clickLatlng'); 
    resultDiv.innerHTML = message;
    
});
</script>
</body>
</html>